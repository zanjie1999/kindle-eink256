.class Lcom/amazon/identity/auth/device/db$2;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/db;->cC()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic iJ:Lcom/amazon/identity/auth/device/db;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/db;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/amazon/identity/auth/device/db$2;->iJ:Lcom/amazon/identity/auth/device/db;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/amazon/identity/auth/device/db$2;->iJ:Lcom/amazon/identity/auth/device/db;

    .line 1017
    iget-object v0, v0, Lcom/amazon/identity/auth/device/db;->iH:Lcom/amazon/identity/auth/device/jt;

    .line 140
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/jt;->cC()V

    return-void
.end method
