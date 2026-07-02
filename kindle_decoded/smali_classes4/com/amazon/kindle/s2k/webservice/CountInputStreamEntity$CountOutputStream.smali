.class Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity$CountOutputStream;
.super Ljava/io/OutputStream;
.source "CountInputStreamEntity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CountOutputStream"
.end annotation


# instance fields
.field private counter:J

.field private outputStream:Ljava/io/OutputStream;

.field final synthetic this$0:Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity;Ljava/io/OutputStream;)V
    .locals 2

    .line 52
    iput-object p1, p0, Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity$CountOutputStream;->this$0:Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const-wide/16 v0, 0x0

    .line 48
    iput-wide v0, p0, Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity$CountOutputStream;->counter:J

    .line 53
    iput-object p2, p0, Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity$CountOutputStream;->outputStream:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity$CountOutputStream;->this$0:Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity;

    .line 61
    invoke-static {v0}, Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity;->access$000(Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity;)Lcom/amazon/kindle/s2k/webservice/UploadWebserviceStatusTracker;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity$CountOutputStream;->this$0:Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity;

    .line 63
    invoke-static {v0}, Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity;->access$000(Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity;)Lcom/amazon/kindle/s2k/webservice/UploadWebserviceStatusTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/s2k/webservice/UploadWebserviceStatusTracker;->getState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ERROR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity$CountOutputStream;->this$0:Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity;

    .line 64
    invoke-static {v0}, Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity;->access$000(Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity;)Lcom/amazon/kindle/s2k/webservice/UploadWebserviceStatusTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/s2k/webservice/UploadWebserviceStatusTracker;->getSubstate()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ABORTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity$CountOutputStream;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 69
    iget-wide v0, p0, Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity$CountOutputStream;->counter:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity$CountOutputStream;->counter:J

    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 75
    iget-object p1, p0, Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity$CountOutputStream;->this$0:Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity;

    invoke-static {p1}, Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity;->access$000(Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity;)Lcom/amazon/kindle/s2k/webservice/UploadWebserviceStatusTracker;

    move-result-object p1

    iget-wide v2, p0, Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity$CountOutputStream;->counter:J

    invoke-virtual {p1, v2, v3}, Lcom/amazon/foundation/AbstractStatusTracker;->reportCurrentProgress(J)V

    .line 76
    iget-object p1, p0, Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity$CountOutputStream;->this$0:Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity;

    invoke-static {p1}, Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity;->access$100(Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity;)J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1f4

    cmp-long p1, v2, v4

    if-ltz p1, :cond_1

    .line 78
    iget-object p1, p0, Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity$CountOutputStream;->this$0:Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity;

    invoke-static {p1, v0, v1}, Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity;->access$102(Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity;J)J

    .line 79
    iget-object p1, p0, Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity$CountOutputStream;->this$0:Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity;

    invoke-static {p1}, Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity;->access$200(Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity;)Lcom/amazon/foundation/ICallback;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 81
    iget-object p1, p0, Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity$CountOutputStream;->this$0:Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity;

    invoke-static {p1}, Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity;->access$200(Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity;)Lcom/amazon/foundation/ICallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/foundation/ICallback;->execute()V

    :cond_1
    return-void
.end method

.method public write([B)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity$CountOutputStream;->this$0:Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity;

    .line 92
    invoke-static {v0}, Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity;->access$000(Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity;)Lcom/amazon/kindle/s2k/webservice/UploadWebserviceStatusTracker;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity$CountOutputStream;->this$0:Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity;

    .line 94
    invoke-static {v0}, Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity;->access$000(Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity;)Lcom/amazon/kindle/s2k/webservice/UploadWebserviceStatusTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/s2k/webservice/UploadWebserviceStatusTracker;->getState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ERROR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity$CountOutputStream;->this$0:Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity;

    .line 95
    invoke-static {v0}, Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity;->access$000(Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity;)Lcom/amazon/kindle/s2k/webservice/UploadWebserviceStatusTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/s2k/webservice/UploadWebserviceStatusTracker;->getSubstate()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ABORTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity$CountOutputStream;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 100
    iget-wide v0, p0, Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity$CountOutputStream;->counter:J

    array-length p1, p1

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity$CountOutputStream;->counter:J

    .line 105
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 106
    iget-object p1, p0, Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity$CountOutputStream;->this$0:Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity;

    invoke-static {p1}, Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity;->access$000(Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity;)Lcom/amazon/kindle/s2k/webservice/UploadWebserviceStatusTracker;

    move-result-object p1

    iget-wide v2, p0, Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity$CountOutputStream;->counter:J

    invoke-virtual {p1, v2, v3}, Lcom/amazon/foundation/AbstractStatusTracker;->reportCurrentProgress(J)V

    .line 107
    iget-object p1, p0, Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity$CountOutputStream;->this$0:Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity;

    invoke-static {p1}, Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity;->access$100(Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity;)J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1f4

    cmp-long p1, v2, v4

    if-ltz p1, :cond_1

    .line 109
    iget-object p1, p0, Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity$CountOutputStream;->this$0:Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity;

    invoke-static {p1, v0, v1}, Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity;->access$102(Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity;J)J

    .line 110
    iget-object p1, p0, Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity$CountOutputStream;->this$0:Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity;

    invoke-static {p1}, Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity;->access$200(Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity;)Lcom/amazon/foundation/ICallback;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 112
    iget-object p1, p0, Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity$CountOutputStream;->this$0:Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity;

    invoke-static {p1}, Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity;->access$200(Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity;)Lcom/amazon/foundation/ICallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/foundation/ICallback;->execute()V

    :cond_1
    return-void
.end method

.method public write([BII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity$CountOutputStream;->this$0:Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity;

    .line 123
    invoke-static {v0}, Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity;->access$000(Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity;)Lcom/amazon/kindle/s2k/webservice/UploadWebserviceStatusTracker;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity$CountOutputStream;->this$0:Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity;

    .line 125
    invoke-static {v0}, Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity;->access$000(Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity;)Lcom/amazon/kindle/s2k/webservice/UploadWebserviceStatusTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/s2k/webservice/UploadWebserviceStatusTracker;->getState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ERROR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity$CountOutputStream;->this$0:Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity;

    .line 126
    invoke-static {v0}, Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity;->access$000(Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity;)Lcom/amazon/kindle/s2k/webservice/UploadWebserviceStatusTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/s2k/webservice/UploadWebserviceStatusTracker;->getSubstate()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ABORTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity$CountOutputStream;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 131
    iget-wide p1, p0, Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity$CountOutputStream;->counter:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity$CountOutputStream;->counter:J

    .line 136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 137
    iget-object p3, p0, Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity$CountOutputStream;->this$0:Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity;

    invoke-static {p3}, Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity;->access$000(Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity;)Lcom/amazon/kindle/s2k/webservice/UploadWebserviceStatusTracker;

    move-result-object p3

    iget-wide v0, p0, Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity$CountOutputStream;->counter:J

    invoke-virtual {p3, v0, v1}, Lcom/amazon/foundation/AbstractStatusTracker;->reportCurrentProgress(J)V

    .line 138
    iget-object p3, p0, Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity$CountOutputStream;->this$0:Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity;

    invoke-static {p3}, Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity;->access$100(Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity;)J

    move-result-wide v0

    sub-long v0, p1, v0

    const-wide/16 v2, 0x1f4

    cmp-long p3, v0, v2

    if-ltz p3, :cond_1

    .line 140
    iget-object p3, p0, Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity$CountOutputStream;->this$0:Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity;

    invoke-static {p3, p1, p2}, Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity;->access$102(Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity;J)J

    .line 141
    iget-object p1, p0, Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity$CountOutputStream;->this$0:Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity;

    invoke-static {p1}, Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity;->access$200(Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity;)Lcom/amazon/foundation/ICallback;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 143
    iget-object p1, p0, Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity$CountOutputStream;->this$0:Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity;

    invoke-static {p1}, Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity;->access$200(Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity;)Lcom/amazon/foundation/ICallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/foundation/ICallback;->execute()V

    :cond_1
    return-void
.end method
