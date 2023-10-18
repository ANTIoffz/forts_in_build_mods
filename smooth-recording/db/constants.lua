-- this increases the rate of ticks so, which means client cursors are smoothly recorded
-- and stream playback is reliable, which is useful for replaying tutorials.
-- Command latency may also be reduced.
--
-- It will also significantly increase the network usage and replay file size
-- For this reason it's not recommended for multiplayer games
Physics.FramesPerTick = 1