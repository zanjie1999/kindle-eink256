.class public final Lcom/audible/mobile/domain/ImmutableCreativeIdImpl;
.super Lcom/audible/mobile/domain/BaseParcelableIdentifierImpl;
.source "ImmutableCreativeIdImpl.kt"

# interfaces
.implements Lcom/audible/mobile/domain/CreativeId;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/mobile/domain/ImmutableCreativeIdImpl$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/audible/mobile/domain/BaseParcelableIdentifierImpl<",
        "Lcom/audible/mobile/domain/CreativeId;",
        ">;",
        "Lcom/audible/mobile/domain/CreativeId;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/audible/mobile/domain/CreativeId;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/audible/mobile/domain/ImmutableCreativeIdImpl$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/audible/mobile/domain/ImmutableCreativeIdImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/audible/mobile/domain/ImmutableCreativeIdImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/audible/mobile/domain/ImmutableCreativeIdImpl;->Companion:Lcom/audible/mobile/domain/ImmutableCreativeIdImpl$Companion;

    .line 23
    new-instance v0, Lcom/audible/mobile/domain/ImmutableCreativeIdImpl$Companion$CREATOR$1;

    invoke-direct {v0}, Lcom/audible/mobile/domain/ImmutableCreativeIdImpl$Companion$CREATOR$1;-><init>()V

    sput-object v0, Lcom/audible/mobile/domain/ImmutableCreativeIdImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/audible/mobile/domain/BaseParcelableIdentifierImpl;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0, p1}, Lcom/audible/mobile/domain/BaseParcelableIdentifierImpl;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-static {p1}, Lcom/audible/mobile/util/StringUtils;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v0, "id is not a valid CreativeId"

    .line 15
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->isTrue(ZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final bridge charAt(I)C
    .locals 0

    .line 11
    invoke-virtual {p0, p1}, Lcom/audible/mobile/domain/ImmutableCreativeIdImpl;->get(I)C

    move-result p1

    return p1
.end method

.method public bridge get(I)C
    .locals 0

    .line 11
    invoke-super {p0, p1}, Lcom/audible/mobile/domain/BaseParcelableIdentifierImpl;->charAt(I)C

    move-result p1

    return p1
.end method

.method public bridge getLength()I
    .locals 1

    .line 11
    invoke-super {p0}, Lcom/audible/mobile/domain/BaseParcelableIdentifierImpl;->length()I

    move-result v0

    return v0
.end method

.method public final bridge length()I
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/audible/mobile/domain/ImmutableCreativeIdImpl;->getLength()I

    move-result v0

    return v0
.end method
