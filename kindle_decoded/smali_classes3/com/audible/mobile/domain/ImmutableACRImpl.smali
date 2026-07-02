.class public final Lcom/audible/mobile/domain/ImmutableACRImpl;
.super Lcom/audible/mobile/domain/BaseParcelableIdentifierImpl;
.source "ImmutableACRImpl.java"

# interfaces
.implements Lcom/audible/mobile/domain/ACR;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/audible/mobile/domain/BaseParcelableIdentifierImpl<",
        "Lcom/audible/mobile/domain/ACR;",
        ">;",
        "Lcom/audible/mobile/domain/ACR;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/audible/mobile/domain/ACR;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Lcom/audible/mobile/domain/ImmutableACRImpl$1;

    invoke-direct {v0}, Lcom/audible/mobile/domain/ImmutableACRImpl$1;-><init>()V

    sput-object v0, Lcom/audible/mobile/domain/ImmutableACRImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/audible/mobile/domain/BaseParcelableIdentifierImpl;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 55
    invoke-direct {p0, p1}, Lcom/audible/mobile/domain/BaseParcelableIdentifierImpl;-><init>(Ljava/lang/String;)V

    const-string v0, "id is not a valid ACR"

    .line 56
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->validACR(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static nullSafeFactory(Ljava/lang/String;)Lcom/audible/mobile/domain/ACR;
    .locals 1

    .line 41
    invoke-static {p0}, Lcom/audible/mobile/util/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    sget-object p0, Lcom/audible/mobile/domain/ACR;->NONE:Lcom/audible/mobile/domain/ACR;

    return-object p0

    .line 45
    :cond_0
    new-instance v0, Lcom/audible/mobile/domain/ImmutableACRImpl;

    invoke-direct {v0, p0}, Lcom/audible/mobile/domain/ImmutableACRImpl;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
