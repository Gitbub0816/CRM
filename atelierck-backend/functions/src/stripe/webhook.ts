export function handleStripeWebhook(event: any, invoice: any) {
  if (event.type === 'checkout.session.completed') {
    return { ...invoice, status: 'paid', paidAt: Date.now(), receiptGenerated: true };
  }
  return invoice;
}
