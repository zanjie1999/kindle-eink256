.class public final enum Lcom/amazon/kindle/krx/library/LibraryGroupType;
.super Ljava/lang/Enum;
.source "LibraryGroupType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/krx/library/LibraryGroupType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/krx/library/LibraryGroupType;

.field public static final enum CLOUD:Lcom/amazon/kindle/krx/library/LibraryGroupType;

.field public static final enum DEVICE:Lcom/amazon/kindle/krx/library/LibraryGroupType;

.field public static final enum NOT_APPLICABLE:Lcom/amazon/kindle/krx/library/LibraryGroupType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 9
    new-instance v0, Lcom/amazon/kindle/krx/library/LibraryGroupType;

    const/4 v1, 0x0

    const-string v2, "CLOUD"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/krx/library/LibraryGroupType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/library/LibraryGroupType;->CLOUD:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    .line 10
    new-instance v0, Lcom/amazon/kindle/krx/library/LibraryGroupType;

    const/4 v2, 0x1

    const-string v3, "DEVICE"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/krx/library/LibraryGroupType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/library/LibraryGroupType;->DEVICE:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    .line 11
    new-instance v0, Lcom/amazon/kindle/krx/library/LibraryGroupType;

    const/4 v3, 0x2

    const-string v4, "NOT_APPLICABLE"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kindle/krx/library/LibraryGroupType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/library/LibraryGroupType;->NOT_APPLICABLE:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/kindle/krx/library/LibraryGroupType;

    .line 7
    sget-object v5, Lcom/amazon/kindle/krx/library/LibraryGroupType;->CLOUD:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/kindle/krx/library/LibraryGroupType;->DEVICE:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/kindle/krx/library/LibraryGroupType;->$VALUES:[Lcom/amazon/kindle/krx/library/LibraryGroupType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/krx/library/LibraryGroupType;
    .locals 1

    .line 7
    const-class v0, Lcom/amazon/kindle/krx/library/LibraryGroupType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/krx/library/LibraryGroupType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/krx/library/LibraryGroupType;
    .locals 1

    .line 7
    sget-object v0, Lcom/amazon/kindle/krx/library/LibraryGroupType;->$VALUES:[Lcom/amazon/kindle/krx/library/LibraryGroupType;

    invoke-virtual {v0}, [Lcom/amazon/kindle/krx/library/LibraryGroupType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/krx/library/LibraryGroupType;

    return-object v0
.end method
