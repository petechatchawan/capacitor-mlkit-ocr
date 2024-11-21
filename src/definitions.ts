export interface MLKitOCRPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
}
