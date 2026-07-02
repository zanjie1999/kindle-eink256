.class Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder$2;
.super Ljava/lang/Object;
.source "ReadingStreamsEncoder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;

.field final synthetic val$actionID:Ljava/lang/String;

.field final synthetic val$context:Ljava/lang/String;

.field final synthetic val$metadata:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .line 281
    iput-object p1, p0, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder$2;->this$0:Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;

    iput-object p2, p0, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder$2;->val$context:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder$2;->val$actionID:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder$2;->val$metadata:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 284
    iget-object v0, p0, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder$2;->this$0:Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;

    iget-object v1, p0, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder$2;->val$context:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder$2;->val$actionID:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder$2;->val$metadata:Ljava/util/Map;

    invoke-static {v0, v1, v2, v3}, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->access$000(Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
