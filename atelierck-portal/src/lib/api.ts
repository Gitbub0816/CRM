export async function createStripeCheckoutSession(invoiceId:string){
  const base=process.env.NEXT_PUBLIC_BACKEND_BASE_URL||'';
  const res=await fetch(`${base}/createStripeCheckoutSession`,{method:'POST',headers:{'content-type':'application/json'},body:JSON.stringify({invoiceId})});
  return res.json();
}
