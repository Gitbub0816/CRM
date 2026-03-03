import { calculateTotals } from '../utils/totals';
import { generateNumber } from '../services/numbering';
import { compileTemplate } from '../rendering/templateCompiler';

export async function createOrUpdateQuote(quoteData: any) {
  const number = quoteData.number ?? await generateNumber(quoteData.companyId, 'quote');
  return { ...quoteData, number };
}

export async function createOrUpdateInvoice(invoiceData: any) {
  const totals = calculateTotals(invoiceData.lineItems ?? [], invoiceData.taxRate ?? 0, invoiceData.discount ?? 0, invoiceData.deposit ?? 0, invoiceData.paid ?? 0);
  const number = invoiceData.number ?? await generateNumber(invoiceData.companyId, 'invoice');
  return { ...invoiceData, number, totals };
}

export async function postPayment(invoiceId: string, payment: any) {
  return { invoiceId, paymentId: `pay_${Date.now()}`, amount: payment.amount, status: 'posted' };
}

export async function publishTemplate(templateId: string, versionId: string) {
  return { templateId, activeVersionId: versionId, publishedAt: Date.now() };
}

export async function renderPreview(template: any, docData: any) {
  return compileTemplate(template, docData);
}

export async function renderPdf(companyId: string, docType: string, docId: string) {
  return {
    storagePath: `/companies/${companyId}/pdf/${docType}/${docId}/${Date.now()}.pdf`,
    signedUrl: `https://example.invalid/${companyId}/${docType}/${docId}.pdf`
  };
}

export async function createStripeCheckoutSession(invoiceId: string) {
  return { invoiceId, url: `https://checkout.stripe.com/pay/mock_${invoiceId}` };
}

export async function stripeWebhook(payload: any) {
  return { ok: true, payloadType: payload?.type ?? 'unknown' };
}
