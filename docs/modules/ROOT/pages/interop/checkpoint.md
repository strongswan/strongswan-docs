= Checkpoint Devices

Checkpoint VSX devices have the following quirks:


== Known Quirks

* When requesting a CHILD_SA for two networks on the remote end, the remote peer will request another IKE_SA but will encrypt them already using an unknown transform/key (maybe the one of the previously established IKE_SA?)
  This prevents establishing of the second IKE_SA. It will not properly respond to the CREATE_CHILD_SA request. This prevents establishing of the CHILD_SA. A solution is to configure several CHILD_SAs, one for every local-remote pair of subnets.
  So configure, for example, two CHILD_SAs with one subnet each.
