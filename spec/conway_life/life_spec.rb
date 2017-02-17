require "spec_helper"

describe Life do
  let(:block_prev) {
    [
      [1,1],[1,2],
      [2,1],[2,2]
    ]
  }
  let(:block_next) {
    [
      [0, 1], [0, 2], [1, 0], [1, 2], [2, 0], [2, 1], [2, 2], [1, 1], [1, 3], [2, 3], [3, 1], [3, 2]
    ]
  }
  let(:block) {
    [
      [1,1],
      [1,2],
      [2,1],
      [2,2]
    ]
  }
  let(:blinker_h) {
    [
      [2,3],
      [3,4],
      [4,5]
    ]
  }
  let(:blinker_v) {
    [
      [3,2],
      [4,2],
      [5,2]
    ]
  }

  it "test block" do
    game = Life.new(block_prev)
    expect(game.tick).to eq(block_next)
  end
end
