import { compileTemplate } from '../functions/src/rendering/templateCompiler';

test('template compiler stable output', () => {
  const out = compileTemplate({name:'x',components:[{type:'Header'},{type:'TotalsBlock'}]}, {companyName:'Atelier d'CK'});
  expect(out.html).toContain('Atelier d'CK');
  expect(out.css).toContain('@page');
});
