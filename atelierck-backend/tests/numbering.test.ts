import { generateNumber } from '../functions/src/services/numbering';

test('numbering format', async () => {
  const n = await generateNumber('c1', 'invoice');
  expect(n).toMatch(/^INV-\d{6}$/);
});
