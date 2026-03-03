import { handleStripeWebhook } from '../functions/src/stripe/webhook';

test('webhook marks invoice paid', () => {
  const out = handleStripeWebhook({type:'checkout.session.completed'}, {id:'i1',status:'issued'});
  expect(out.status).toBe('paid');
  expect(out.receiptGenerated).toBe(true);
});
