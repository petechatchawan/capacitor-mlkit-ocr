import { WebPlugin } from '@capacitor/core';

import type { MLKitOCRPlugin } from './definitions';

export class MLKitOCRWeb extends WebPlugin implements MLKitOCRPlugin {
  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }
}
