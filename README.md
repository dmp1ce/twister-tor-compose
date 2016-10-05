# Twister with Tor support

Docker Compose configuration for launching Twister with Tor support.

## Usage

### Start Twsiter
```
$ docker-compose up -d
Starting twistercompose_tor_1
Starting twistercompose_twister_1
```

Then go to `http://localhost:28332/` in your browser.

### Follow logs

Be careful watching log when Twister is syncing heavily because of the amount of messages!

```
$ docker-compose logs --tail="10"
Attaching to twistercompose_twister_1, twistercompose_tor_1
tor_1      | Oct 05 20:14:19.000 [notice] Tor has successfully opened a circuit. Looks like client functionality is working.
tor_1      | Oct 05 20:14:19.000 [notice] Bootstrapped 100%: Done
tor_1      | Oct 05 20:14:29.000 [warn] socks5: command 2 not recognized. Rejecting.
tor_1      | Oct 05 20:14:29.000 [warn] socks5: command 3 not recognized. Rejecting.
tor_1      | Oct 05 20:14:55.000 [notice] We tried for 15 seconds to connect to '[scrubbed]' using exit $5CECC5C30ACC4B3DE462792323967087CC53D947~PrivacyRepublic0001 at 178.32.181.96. Retrying on a new circuit.
tor_1      | Oct 05 20:15:10.000 [notice] We tried for 15 seconds to connect to '[scrubbed]' using exit $B0964415A5380080570845E7CBFCADF87FDCCE5A~Necto7 at 93.115.95.216. Retrying on a new circuit.
tor_1      | Oct 05 20:15:25.000 [notice] We tried for 15 seconds to connect to '[scrubbed]' using exit $B210DF76804619395044D139E826D4AAC939CADB~BabylonNetwork03 at 149.56.229.17. Retryingon a new circuit.
tor_1      | Oct 05 20:15:40.000 [notice] We tried for 15 seconds to connect to '[scrubbed]' using exit $1D0666B1968C2270BF20C7214B7F7D26CD1A82E6~Necto2 at 93.115.95.202. Retrying on a new circuit.
tor_1      | Oct 05 20:15:55.000 [notice] We tried for 15 seconds to connect to '[scrubbed]' using exit $9E0B9F902F83E96C352E3B9ECEA4B60B1301A7A1~BabylonNetwork04 at 212.117.180.21. Retrying on a new circuit.
tor_1      | Oct 05 20:16:10.000 [notice] We tried for 15 seconds to connect to '[scrubbed]' using exit $9E0B9F902F83E96C352E3B9ECEA4B60B1301A7A1~BabylonNetwork04 at 212.117.180.21. Retrying on a new circuit.
twister_1  | twisterwallet.dat closed
twister_1  | DBFlush(false) ended              11ms
twister_1  | StopNode()
twister_1  | Flushed 1920 addresses to peers.dat  12ms
twister_1  | Flush(true)
twister_1  | twisterwallet.dat refcount=0
twister_1  | twisterwallet.dat checkpoint
twister_1  | twisterwallet.dat detach
twister_1  | twisterwallet.dat closed
twister_1  | DBFlush(true) ended              18ms
```

### Stop Twister
```
$ docker-compose stop
Stopping twistercompose_twister_1 ... done
Stopping twistercompose_tor_1 ... done
```

## Finding seeds

Currently, using this Tor configuration, my client is unable to find any nodes to communication with the network.
