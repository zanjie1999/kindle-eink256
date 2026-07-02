.class public final Lcom/audible/mobile/domain/ImmutableRequestIdImpl;
.super Lcom/audible/mobile/domain/BaseParcelableIdentifierImpl;
.source "ImmutableRequestIdImpl.java"

# interfaces
.implements Lcom/audible/mobile/domain/RequestId;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/audible/mobile/domain/BaseParcelableIdentifierImpl<",
        "Lcom/audible/mobile/domain/RequestId;",
        ">;",
        "Lcom/audible/mobile/domain/RequestId;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/audible/mobile/domain/RequestId;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Lcom/audible/mobile/domain/ImmutableRequestIdImpl$1;

    invoke-direct {v0}, Lcom/audible/mobile/domain/ImmutableRequestIdImpl$1;-><init>()V

    sput-object v0, Lcom/audible/mobile/domain/ImmutableRequestIdImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/audible/mobile/domain/BaseParcelableIdentifierImpl;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/audible/mobile/domain/BaseParcelableIdentifierImpl;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static nullSafeFactory(Ljava/lang/String;)Lcom/audible/mobile/domain/RequestId;
    .locals 1

    .line 41
    invoke-static {p0}, Lcom/audible/mobile/util/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    sget-object p0, Lcom/audible/mobile/domain/RequestId;->NONE:Lcom/audible/mobile/domain/RequestId;

    return-object p0

    .line 45
    :cond_0
    new-instance v0, Lcom/audible/mobile/domain/ImmutableRequestIdImpl;

    invoke-direct {v0, p0}, Lcom/audible/mobile/domain/ImmutableRequestIdImpl;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
