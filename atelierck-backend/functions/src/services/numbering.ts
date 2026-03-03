const counters = new Map<string, number>();
export async function generateNumber(companyId: string, docType: string) {
  const key = `${companyId}:${docType}`;
  const next = (counters.get(key) ?? 0) + 1;
  counters.set(key, next);
  const prefix = docType.slice(0,3).toUpperCase();
  return `${prefix}-${String(next).padStart(6,'0')}`;
}
