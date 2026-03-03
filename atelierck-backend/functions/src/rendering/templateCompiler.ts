export type Component = { type: string; props?: Record<string, unknown> };
export type TemplateVersion = { name: string; components: Component[]; styles?: Record<string, string> };

export function compileTemplate(template: TemplateVersion, docData: any) {
  const css = '@page { margin: 18mm; } table thead{display:table-header-group;} .totals{break-inside:avoid;} body{font-family:Inter,sans-serif;color:#171717}';
  const rendered = template.components
    .map((c) => `<section data-component="${c.type}">${renderComponent(c.type, docData)}</section>`)
    .join('\n');
  return { html: `<!doctype html><html><head><style>${css}</style></head><body>${rendered}</body></html>`, css };
}

function renderComponent(type: string, data: any) {
  switch (type) {
    case 'Header': return `<h1>${data.companyName ?? "Atelier d'CK"}</h1>`;
    case 'ClientBlock': return `<div>Client: ${data.clientName ?? ''}</div>`;
    case 'ProjectBlock': return `<div>Project: ${data.projectName ?? ''}</div>`;
    case 'LineItemsTable': return '<table><thead><tr><th>Description</th><th>Qty</th><th>Price</th></tr></thead><tbody></tbody></table>';
    case 'TotalsBlock': return '<div class="totals">Totals</div>';
    case 'TermsBlock': return '<div>Terms</div>';
    case 'SignatureBlock': return '<div>Signature</div>';
    case 'PaymentInstructions': return '<div>Payment Instructions</div>';
    case 'Footer': return "<footer>Atelier d'CK</footer>";
    case 'Watermark': return '<div>PAID</div>';
    default: return `<div>${type}</div>`;
  }
}
