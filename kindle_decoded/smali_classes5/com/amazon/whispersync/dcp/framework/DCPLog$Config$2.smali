.class Lcom/amazon/whispersync/dcp/framework/DCPLog$Config$2;
.super Ljava/lang/ThreadLocal;
.source "DCPLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/dcp/framework/DCPLog$Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whispersync/dcp/framework/DCPLog$Config;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/dcp/framework/DCPLog$Config;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/DCPLog$Config$2;->this$0:Lcom/amazon/whispersync/dcp/framework/DCPLog$Config;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .line 202
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/framework/DCPLog$Config$2;->initialValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected initialValue()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
