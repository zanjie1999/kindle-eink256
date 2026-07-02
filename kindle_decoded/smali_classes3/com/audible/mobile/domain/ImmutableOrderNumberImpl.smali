.class public final Lcom/audible/mobile/domain/ImmutableOrderNumberImpl;
.super Lcom/audible/mobile/domain/BaseParcelableIdentifierImpl;
.source "ImmutableOrderNumberImpl.kt"

# interfaces
.implements Lcom/audible/mobile/domain/OrderNumber;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/mobile/domain/ImmutableOrderNumberImpl$CREATOR;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/audible/mobile/domain/BaseParcelableIdentifierImpl<",
        "Lcom/audible/mobile/domain/OrderNumber;",
        ">;",
        "Lcom/audible/mobile/domain/OrderNumber;"
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/audible/mobile/domain/ImmutableOrderNumberImpl$CREATOR;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/audible/mobile/domain/ImmutableOrderNumberImpl$CREATOR;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/audible/mobile/domain/ImmutableOrderNumberImpl$CREATOR;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/audible/mobile/domain/ImmutableOrderNumberImpl;->CREATOR:Lcom/audible/mobile/domain/ImmutableOrderNumberImpl$CREATOR;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, ""

    .line 11
    invoke-direct {p0, v0}, Lcom/audible/mobile/domain/ImmutableOrderNumberImpl;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0, p1}, Lcom/audible/mobile/domain/BaseParcelableIdentifierImpl;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final bridge charAt(I)C
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lcom/audible/mobile/domain/ImmutableOrderNumberImpl;->get(I)C

    move-result p1

    return p1
.end method

.method public bridge get(I)C
    .locals 0

    .line 8
    invoke-super {p0, p1}, Lcom/audible/mobile/domain/BaseParcelableIdentifierImpl;->charAt(I)C

    move-result p1

    return p1
.end method

.method public bridge getLength()I
    .locals 1

    .line 8
    invoke-super {p0}, Lcom/audible/mobile/domain/BaseParcelableIdentifierImpl;->length()I

    move-result v0

    return v0
.end method

.method public final bridge length()I
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/audible/mobile/domain/ImmutableOrderNumberImpl;->getLength()I

    move-result v0

    return v0
.end method
