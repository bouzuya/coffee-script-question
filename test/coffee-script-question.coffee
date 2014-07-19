describe 'coffee-script-question', ->
  describe 'the existential operator (?) ', ->
    describe '!(null or undefined) value', ->
      it 'returns value', ->
        [true, false, 0, 1, {}, []].forEach (value) ->
          expect(value ? null).to.equal(value)

    describe 'null or undefined', ->
      it 'returns default value', ->
        defaultValue = true
        [null, undefined].forEach (value) ->
          expect(value ? defaultValue).to.equal(defaultValue)

    describe 'obj.key?', ->
      describe 'exists', ->
        beforeEach -> @obj = { key: 'value' }
        it 'returns true', ->
          expect(@obj.key?).to.equal(true)

      describe 'does not exist', ->
        beforeEach -> @obj = { key: 'value' }
        it 'returns false', ->
          expect(@obj.nokey?).to.equal(false)
