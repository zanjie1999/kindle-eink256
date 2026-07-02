.class public Lcom/amazon/whispersync/device/utils/DetUtil$ReplaceHeader;
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
    name = "ReplaceHeader"
.end annotation


# instance fields
.field private mNewHeader:Ljava/lang/String;

.field private mNextProcessor:Lcom/amazon/whispersync/device/utils/DetUtil$HeaderProcessor;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/amazon/whispersync/device/utils/DetUtil$HeaderProcessor;)V
    .locals 0

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iput-object p1, p0, Lcom/amazon/whispersync/device/utils/DetUtil$ReplaceHeader;->mNewHeader:Ljava/lang/String;

    .line 161
    iput-object p2, p0, Lcom/amazon/whispersync/device/utils/DetUtil$ReplaceHeader;->mNextProcessor:Lcom/amazon/whispersync/device/utils/DetUtil$HeaderProcessor;

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

    .line 166
    iget-object p1, p0, Lcom/amazon/whispersync/device/utils/DetUtil$ReplaceHeader;->mNextProcessor:Lcom/amazon/whispersync/device/utils/DetUtil$HeaderProcessor;

    iget-object v0, p0, Lcom/amazon/whispersync/device/utils/DetUtil$ReplaceHeader;->mNewHeader:Ljava/lang/String;

    invoke-interface {p1, v0, p2, p3}, Lcom/amazon/whispersync/device/utils/DetUtil$HeaderProcessor;->process(Ljava/lang/String;Ljava/lang/String;Ljava/io/Writer;)V

    return-void
.end method
