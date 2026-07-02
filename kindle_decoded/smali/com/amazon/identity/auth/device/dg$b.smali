.class Lcom/amazon/identity/auth/device/dg$b;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/dg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private final ju:Lcom/amazon/identity/auth/device/dg$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/identity/auth/device/dg$a<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/dg$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/identity/auth/device/dg$a<",
            "*>;)V"
        }
    .end annotation

    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 367
    iput-object p1, p0, Lcom/amazon/identity/auth/device/dg$b;->ju:Lcom/amazon/identity/auth/device/dg$a;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 373
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dg$b;->ju:Lcom/amazon/identity/auth/device/dg$a;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/dg$a;->onError()V

    return-void
.end method
