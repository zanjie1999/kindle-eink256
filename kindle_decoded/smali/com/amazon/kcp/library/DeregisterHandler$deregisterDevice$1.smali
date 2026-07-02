.class final Lcom/amazon/kcp/library/DeregisterHandler$deregisterDevice$1;
.super Ljava/lang/Object;
.source "DeregisterHandler.kt"

# interfaces
.implements Lcom/amazon/kcp/library/LogoutDialogFragment$DeregisterHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/DeregisterHandler;->deregisterDevice()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/library/DeregisterHandler$deregisterDevice$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amazon/kcp/library/DeregisterHandler$deregisterDevice$1;

    invoke-direct {v0}, Lcom/amazon/kcp/library/DeregisterHandler$deregisterDevice$1;-><init>()V

    sput-object v0, Lcom/amazon/kcp/library/DeregisterHandler$deregisterDevice$1;->INSTANCE:Lcom/amazon/kcp/library/DeregisterHandler$deregisterDevice$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final postDeregistration()V
    .locals 1

    .line 54
    sget-object v0, Lcom/amazon/kcp/library/DeregisterHandler;->INSTANCE:Lcom/amazon/kcp/library/DeregisterHandler;

    invoke-static {v0}, Lcom/amazon/kcp/library/DeregisterHandler;->access$onDeregisterClickedAsync(Lcom/amazon/kcp/library/DeregisterHandler;)V

    return-void
.end method
