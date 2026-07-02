.class public Lcom/amazon/identity/auth/device/cf;
.super Ljava/lang/Object;
.source "DCP"


# instance fields
.field public final ib:Z

.field public final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/amazon/identity/auth/device/cf;->value:Ljava/lang/String;

    .line 12
    iput-boolean p2, p0, Lcom/amazon/identity/auth/device/cf;->ib:Z

    return-void
.end method
