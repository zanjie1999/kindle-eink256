.class public final enum Lcom/amazon/kcp/library/ui/Cover$CoverEffects;
.super Ljava/lang/Enum;
.source "Cover.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/ui/Cover;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CoverEffects"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/library/ui/Cover$CoverEffects;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/library/ui/Cover$CoverEffects;

.field public static final enum NO_PAGES:Lcom/amazon/kcp/library/ui/Cover$CoverEffects;

.field public static final enum NO_PAGES_WITH_DROP_SHADOW:Lcom/amazon/kcp/library/ui/Cover$CoverEffects;

.field public static final enum THICK_DENSE_PAGES:Lcom/amazon/kcp/library/ui/Cover$CoverEffects;

.field public static final enum THICK_SPARSE_PAGES:Lcom/amazon/kcp/library/ui/Cover$CoverEffects;

.field public static final enum THIN_DENSE_PAGES:Lcom/amazon/kcp/library/ui/Cover$CoverEffects;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 26
    new-instance v0, Lcom/amazon/kcp/library/ui/Cover$CoverEffects;

    const/4 v1, 0x0

    const-string v2, "THICK_DENSE_PAGES"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kcp/library/ui/Cover$CoverEffects;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/library/ui/Cover$CoverEffects;->THICK_DENSE_PAGES:Lcom/amazon/kcp/library/ui/Cover$CoverEffects;

    .line 31
    new-instance v0, Lcom/amazon/kcp/library/ui/Cover$CoverEffects;

    const/4 v2, 0x1

    const-string v3, "THIN_DENSE_PAGES"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kcp/library/ui/Cover$CoverEffects;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/library/ui/Cover$CoverEffects;->THIN_DENSE_PAGES:Lcom/amazon/kcp/library/ui/Cover$CoverEffects;

    .line 36
    new-instance v0, Lcom/amazon/kcp/library/ui/Cover$CoverEffects;

    const/4 v3, 0x2

    const-string v4, "THICK_SPARSE_PAGES"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kcp/library/ui/Cover$CoverEffects;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/library/ui/Cover$CoverEffects;->THICK_SPARSE_PAGES:Lcom/amazon/kcp/library/ui/Cover$CoverEffects;

    .line 41
    new-instance v0, Lcom/amazon/kcp/library/ui/Cover$CoverEffects;

    const/4 v4, 0x3

    const-string v5, "NO_PAGES"

    invoke-direct {v0, v5, v4}, Lcom/amazon/kcp/library/ui/Cover$CoverEffects;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/library/ui/Cover$CoverEffects;->NO_PAGES:Lcom/amazon/kcp/library/ui/Cover$CoverEffects;

    .line 46
    new-instance v0, Lcom/amazon/kcp/library/ui/Cover$CoverEffects;

    const/4 v5, 0x4

    const-string v6, "NO_PAGES_WITH_DROP_SHADOW"

    invoke-direct {v0, v6, v5}, Lcom/amazon/kcp/library/ui/Cover$CoverEffects;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/library/ui/Cover$CoverEffects;->NO_PAGES_WITH_DROP_SHADOW:Lcom/amazon/kcp/library/ui/Cover$CoverEffects;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/amazon/kcp/library/ui/Cover$CoverEffects;

    .line 22
    sget-object v7, Lcom/amazon/kcp/library/ui/Cover$CoverEffects;->THICK_DENSE_PAGES:Lcom/amazon/kcp/library/ui/Cover$CoverEffects;

    aput-object v7, v6, v1

    sget-object v1, Lcom/amazon/kcp/library/ui/Cover$CoverEffects;->THIN_DENSE_PAGES:Lcom/amazon/kcp/library/ui/Cover$CoverEffects;

    aput-object v1, v6, v2

    sget-object v1, Lcom/amazon/kcp/library/ui/Cover$CoverEffects;->THICK_SPARSE_PAGES:Lcom/amazon/kcp/library/ui/Cover$CoverEffects;

    aput-object v1, v6, v3

    sget-object v1, Lcom/amazon/kcp/library/ui/Cover$CoverEffects;->NO_PAGES:Lcom/amazon/kcp/library/ui/Cover$CoverEffects;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/amazon/kcp/library/ui/Cover$CoverEffects;->$VALUES:[Lcom/amazon/kcp/library/ui/Cover$CoverEffects;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/library/ui/Cover$CoverEffects;
    .locals 1

    .line 22
    const-class v0, Lcom/amazon/kcp/library/ui/Cover$CoverEffects;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/library/ui/Cover$CoverEffects;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/library/ui/Cover$CoverEffects;
    .locals 1

    .line 22
    sget-object v0, Lcom/amazon/kcp/library/ui/Cover$CoverEffects;->$VALUES:[Lcom/amazon/kcp/library/ui/Cover$CoverEffects;

    invoke-virtual {v0}, [Lcom/amazon/kcp/library/ui/Cover$CoverEffects;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/library/ui/Cover$CoverEffects;

    return-object v0
.end method
