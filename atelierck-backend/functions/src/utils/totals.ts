export type LineItem = { description: string; quantity: number; unitPrice: number };
export function calculateTotals(lineItems: LineItem[], taxRate: number, discount = 0, deposit = 0, paid = 0) {
  const subtotal = lineItems.reduce((a, i) => a + i.quantity * i.unitPrice, 0);
  const discountAmount = Math.min(discount, subtotal);
  const taxedBase = subtotal - discountAmount;
  const taxAmount = taxedBase * (taxRate / 100);
  const total = taxedBase + taxAmount;
  const dueAfterDeposit = Math.max(total - deposit, 0);
  const balance = Math.max(dueAfterDeposit - paid, 0);
  const status = balance === 0 ? 'paid' : paid > 0 ? 'partially_paid' : 'issued';
  return { subtotal, discountAmount, taxAmount, total, dueAfterDeposit, balance, status };
}
