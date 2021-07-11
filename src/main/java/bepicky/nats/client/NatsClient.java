package bepicky.nats.client;

import io.nats.client.Connection;
import io.nats.client.Nats;
import io.nats.client.Options;
import org.springframework.stereotype.Service;

import javax.annotation.PostConstruct;
import java.io.IOException;
import java.nio.charset.StandardCharsets;

@Service
public class NatsClient {

    private Connection nc;

    @PostConstruct
    public void init() throws IOException, InterruptedException {
        Options opt = new Options.Builder()
            .server("nats://na-ts:4222")
            .connectionName("na-ts")
            .build();
        nc = Nats.connect(opt);
        nc.publish("subject", "hello world".getBytes(StandardCharsets.UTF_8));
    }
}
