.class public final Lcom/audible/mobile/domain/ImmutableProductIdImpl;
.super Lcom/audible/mobile/domain/BaseParcelableIdentifierImpl;
.source "ImmutableProductIdImpl.java"

# interfaces
.implements Lcom/audible/mobile/domain/ProductId;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/audible/mobile/domain/BaseParcelableIdentifierImpl<",
        "Lcom/audible/mobile/domain/ProductId;",
        ">;",
        "Lcom/audible/mobile/domain/ProductId;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/audible/mobile/domain/ProductId;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Lcom/audible/mobile/domain/ImmutableProductIdImpl$1;

    invoke-direct {v0}, Lcom/audible/mobile/domain/ImmutableProductIdImpl$1;-><init>()V

    sput-object v0, Lcom/audible/mobile/domain/ImmutableProductIdImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/audible/mobile/domain/BaseParcelableIdentifierImpl;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static nullSafeFactory(Ljava/lang/String;)Lcom/audible/mobile/domain/ProductId;
    .locals 1

    .line 38
    invoke-static {p0}, Lcom/audible/mobile/util/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    sget-object p0, Lcom/audible/mobile/domain/ProductId;->NONE:Lcom/audible/mobile/domain/ProductId;

    return-object p0

    .line 42
    :cond_0
    new-instance v0, Lcom/audible/mobile/domain/ImmutableProductIdImpl;

    invoke-direct {v0, p0}, Lcom/audible/mobile/domain/ImmutableProductIdImpl;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
