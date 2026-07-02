.class Lcom/amazon/kcp/debug/DebugActivity$30$1;
.super Ljava/lang/Object;
.source "DebugActivity.java"

# interfaces
.implements Lcom/amazon/dcp/messaging/DeliveryOption;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/debug/DebugActivity$30;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/amazon/kcp/debug/DebugActivity$30;)V
    .locals 0

    .line 1377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    const-string v0, "REQUESTER"

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    const-string v0, "KFA-QA"

    return-object v0
.end method
