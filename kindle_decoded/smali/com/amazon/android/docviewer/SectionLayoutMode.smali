.class public final enum Lcom/amazon/android/docviewer/SectionLayoutMode;
.super Ljava/lang/Enum;
.source "SectionLayoutMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/android/docviewer/SectionLayoutMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/android/docviewer/SectionLayoutMode;

.field public static final enum NORMAL:Lcom/amazon/android/docviewer/SectionLayoutMode;

.field public static final enum SCALE_TO_FIT:Lcom/amazon/android/docviewer/SectionLayoutMode;

.field public static final enum SCALE_TO_WIDTH:Lcom/amazon/android/docviewer/SectionLayoutMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 7
    new-instance v0, Lcom/amazon/android/docviewer/SectionLayoutMode;

    const/4 v1, 0x0

    const-string v2, "NORMAL"

    invoke-direct {v0, v2, v1}, Lcom/amazon/android/docviewer/SectionLayoutMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/android/docviewer/SectionLayoutMode;->NORMAL:Lcom/amazon/android/docviewer/SectionLayoutMode;

    .line 8
    new-instance v0, Lcom/amazon/android/docviewer/SectionLayoutMode;

    const/4 v2, 0x1

    const-string v3, "SCALE_TO_FIT"

    invoke-direct {v0, v3, v2}, Lcom/amazon/android/docviewer/SectionLayoutMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/android/docviewer/SectionLayoutMode;->SCALE_TO_FIT:Lcom/amazon/android/docviewer/SectionLayoutMode;

    .line 9
    new-instance v0, Lcom/amazon/android/docviewer/SectionLayoutMode;

    const/4 v3, 0x2

    const-string v4, "SCALE_TO_WIDTH"

    invoke-direct {v0, v4, v3}, Lcom/amazon/android/docviewer/SectionLayoutMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/android/docviewer/SectionLayoutMode;->SCALE_TO_WIDTH:Lcom/amazon/android/docviewer/SectionLayoutMode;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/android/docviewer/SectionLayoutMode;

    .line 6
    sget-object v5, Lcom/amazon/android/docviewer/SectionLayoutMode;->NORMAL:Lcom/amazon/android/docviewer/SectionLayoutMode;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/android/docviewer/SectionLayoutMode;->SCALE_TO_FIT:Lcom/amazon/android/docviewer/SectionLayoutMode;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/android/docviewer/SectionLayoutMode;->$VALUES:[Lcom/amazon/android/docviewer/SectionLayoutMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/android/docviewer/SectionLayoutMode;
    .locals 1

    .line 6
    const-class v0, Lcom/amazon/android/docviewer/SectionLayoutMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/android/docviewer/SectionLayoutMode;

    return-object p0
.end method

.method public static values()[Lcom/amazon/android/docviewer/SectionLayoutMode;
    .locals 1

    .line 6
    sget-object v0, Lcom/amazon/android/docviewer/SectionLayoutMode;->$VALUES:[Lcom/amazon/android/docviewer/SectionLayoutMode;

    invoke-virtual {v0}, [Lcom/amazon/android/docviewer/SectionLayoutMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/android/docviewer/SectionLayoutMode;

    return-object v0
.end method
