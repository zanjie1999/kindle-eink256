.class public Lcom/amazon/whispersync/device/utils/DetUtil$DefaultHeaderProcessor;
.super Ljava/lang/Object;
.source "DetUtil.java"

# interfaces
.implements Lcom/amazon/whispersync/device/utils/DetUtil$HeaderProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/device/utils/DetUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultHeaderProcessor"
.end annotation


# instance fields
.field private final mDefaultHeaderProcessor:Lcom/amazon/whispersync/device/utils/DetUtil$HeaderProcessor;

.field private final mHeaderProcessors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/whispersync/device/utils/DetUtil$HeaderProcessor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;Lcom/amazon/whispersync/device/utils/DetUtil$HeaderProcessor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/whispersync/device/utils/DetUtil$HeaderProcessor;",
            ">;",
            "Lcom/amazon/whispersync/device/utils/DetUtil$HeaderProcessor;",
            ")V"
        }
    .end annotation

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p1, p0, Lcom/amazon/whispersync/device/utils/DetUtil$DefaultHeaderProcessor;->mHeaderProcessors:Ljava/util/Map;

    .line 118
    iput-object p2, p0, Lcom/amazon/whispersync/device/utils/DetUtil$DefaultHeaderProcessor;->mDefaultHeaderProcessor:Lcom/amazon/whispersync/device/utils/DetUtil$HeaderProcessor;

    return-void
.end method


# virtual methods
.method public process(Ljava/lang/String;Ljava/lang/String;Ljava/io/Writer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/amazon/whispersync/device/utils/DetUtil$DefaultHeaderProcessor;->mHeaderProcessors:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whispersync/device/utils/DetUtil$HeaderProcessor;

    if-eqz v0, :cond_0

    .line 125
    invoke-interface {v0, p1, p2, p3}, Lcom/amazon/whispersync/device/utils/DetUtil$HeaderProcessor;->process(Ljava/lang/String;Ljava/lang/String;Ljava/io/Writer;)V

    goto :goto_0

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/device/utils/DetUtil$DefaultHeaderProcessor;->mDefaultHeaderProcessor:Lcom/amazon/whispersync/device/utils/DetUtil$HeaderProcessor;

    invoke-interface {v0, p1, p2, p3}, Lcom/amazon/whispersync/device/utils/DetUtil$HeaderProcessor;->process(Ljava/lang/String;Ljava/lang/String;Ljava/io/Writer;)V

    :goto_0
    return-void
.end method
