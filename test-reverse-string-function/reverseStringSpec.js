describe('reverseString', () => {
  describe('test', () => {
    it("reverse of test is tset", () => {
      let word = reverseString('test');
      expect(word).toBeDefined();
      expect(word).toEqual('tset');
    });
  });
});
