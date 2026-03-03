import { calculateTotals } from '../functions/src/utils/totals';

test('totals with tax discount and partial payment', () => {
  const r = calculateTotals([{description:'A',quantity:2,unitPrice:100}], 10, 20, 0, 50);
  expect(r.total).toBe(198);
  expect(r.balance).toBe(148);
  expect(r.status).toBe('partially_paid');
});
