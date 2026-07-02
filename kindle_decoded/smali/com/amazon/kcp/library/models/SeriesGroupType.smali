.class public final enum Lcom/amazon/kcp/library/models/SeriesGroupType;
.super Ljava/lang/Enum;
.source "SeriesGroupType.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/library/models/SeriesGroupType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/library/models/SeriesGroupType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/library/models/SeriesGroupType;

.field public static final Companion:Lcom/amazon/kcp/library/models/SeriesGroupType$Companion;

.field public static final enum ISSUE:Lcom/amazon/kcp/library/models/SeriesGroupType;

.field public static final enum NONE:Lcom/amazon/kcp/library/models/SeriesGroupType;

.field public static final enum OMNIBUS:Lcom/amazon/kcp/library/models/SeriesGroupType;

.field public static final enum VOLUME:Lcom/amazon/kcp/library/models/SeriesGroupType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/amazon/kcp/library/models/SeriesGroupType;

    new-instance v1, Lcom/amazon/kcp/library/models/SeriesGroupType;

    const/4 v2, 0x0

    const-string v3, "ISSUE"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kcp/library/models/SeriesGroupType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kcp/library/models/SeriesGroupType;->ISSUE:Lcom/amazon/kcp/library/models/SeriesGroupType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/library/models/SeriesGroupType;

    const/4 v2, 0x1

    const-string v3, "VOLUME"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kcp/library/models/SeriesGroupType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kcp/library/models/SeriesGroupType;->VOLUME:Lcom/amazon/kcp/library/models/SeriesGroupType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/library/models/SeriesGroupType;

    const/4 v2, 0x2

    const-string v3, "OMNIBUS"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kcp/library/models/SeriesGroupType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kcp/library/models/SeriesGroupType;->OMNIBUS:Lcom/amazon/kcp/library/models/SeriesGroupType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/library/models/SeriesGroupType;

    const/4 v2, 0x3

    const-string v3, "NONE"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kcp/library/models/SeriesGroupType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kcp/library/models/SeriesGroupType;->NONE:Lcom/amazon/kcp/library/models/SeriesGroupType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/kcp/library/models/SeriesGroupType;->$VALUES:[Lcom/amazon/kcp/library/models/SeriesGroupType;

    new-instance v0, Lcom/amazon/kcp/library/models/SeriesGroupType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kcp/library/models/SeriesGroupType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kcp/library/models/SeriesGroupType;->Companion:Lcom/amazon/kcp/library/models/SeriesGroupType$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static final fromString(Ljava/lang/String;)Lcom/amazon/kcp/library/models/SeriesGroupType;
    .locals 1

    sget-object v0, Lcom/amazon/kcp/library/models/SeriesGroupType;->Companion:Lcom/amazon/kcp/library/models/SeriesGroupType$Companion;

    invoke-virtual {v0, p0}, Lcom/amazon/kcp/library/models/SeriesGroupType$Companion;->fromString(Ljava/lang/String;)Lcom/amazon/kcp/library/models/SeriesGroupType;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/library/models/SeriesGroupType;
    .locals 1

    const-class v0, Lcom/amazon/kcp/library/models/SeriesGroupType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/library/models/SeriesGroupType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/library/models/SeriesGroupType;
    .locals 1

    sget-object v0, Lcom/amazon/kcp/library/models/SeriesGroupType;->$VALUES:[Lcom/amazon/kcp/library/models/SeriesGroupType;

    invoke-virtual {v0}, [Lcom/amazon/kcp/library/models/SeriesGroupType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/library/models/SeriesGroupType;

    return-object v0
.end method
