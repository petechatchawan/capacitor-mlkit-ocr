import { registerPlugin } from '@capacitor/core';

import type { MLKitOCRPlugin } from './definitions';

const MLKitOCR = registerPlugin<MLKitOCRPlugin>('MLKitOCR', {
  web: () => import('./web').then((m) => new m.MLKitOCRWeb()),
});

export * from './definitions';
export { MLKitOCR };
