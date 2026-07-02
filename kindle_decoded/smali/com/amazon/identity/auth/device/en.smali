.class public Lcom/amazon/identity/auth/device/en;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/iu;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/amazon/identity/auth/device/iu<",
        "Lcom/amazon/identity/auth/device/en<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private final mValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/amazon/identity/auth/device/en;->mValue:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public ei()Lcom/amazon/identity/auth/device/en;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/identity/auth/device/en<",
            "TT;>;"
        }
    .end annotation

    .line 26
    :try_start_0
    new-instance v0, Lcom/amazon/identity/auth/device/en;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/en;->mValue:Ljava/lang/Object;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/ic;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/identity/auth/device/en;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 30
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public synthetic ej()Lcom/amazon/identity/auth/device/iu;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/en;->ei()Lcom/amazon/identity/auth/device/en;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/amazon/identity/auth/device/en;->mValue:Ljava/lang/Object;

    return-object v0
.end method
