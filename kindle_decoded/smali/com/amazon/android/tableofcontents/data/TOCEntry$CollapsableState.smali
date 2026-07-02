.class public final enum Lcom/amazon/android/tableofcontents/data/TOCEntry$CollapsableState;
.super Ljava/lang/Enum;
.source "TOCEntry.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/tableofcontents/data/TOCEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CollapsableState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/android/tableofcontents/data/TOCEntry$CollapsableState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/android/tableofcontents/data/TOCEntry$CollapsableState;

.field public static final enum COLLAPSED:Lcom/amazon/android/tableofcontents/data/TOCEntry$CollapsableState;

.field public static final enum EXPANDED:Lcom/amazon/android/tableofcontents/data/TOCEntry$CollapsableState;

.field public static final enum UNCOLLAPSIBLE:Lcom/amazon/android/tableofcontents/data/TOCEntry$CollapsableState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/amazon/android/tableofcontents/data/TOCEntry$CollapsableState;

    new-instance v1, Lcom/amazon/android/tableofcontents/data/TOCEntry$CollapsableState;

    const/4 v2, 0x0

    const-string v3, "UNCOLLAPSIBLE"

    invoke-direct {v1, v3, v2}, Lcom/amazon/android/tableofcontents/data/TOCEntry$CollapsableState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/android/tableofcontents/data/TOCEntry$CollapsableState;->UNCOLLAPSIBLE:Lcom/amazon/android/tableofcontents/data/TOCEntry$CollapsableState;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/android/tableofcontents/data/TOCEntry$CollapsableState;

    const/4 v2, 0x1

    const-string v3, "COLLAPSED"

    invoke-direct {v1, v3, v2}, Lcom/amazon/android/tableofcontents/data/TOCEntry$CollapsableState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/android/tableofcontents/data/TOCEntry$CollapsableState;->COLLAPSED:Lcom/amazon/android/tableofcontents/data/TOCEntry$CollapsableState;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/android/tableofcontents/data/TOCEntry$CollapsableState;

    const/4 v2, 0x2

    const-string v3, "EXPANDED"

    invoke-direct {v1, v3, v2}, Lcom/amazon/android/tableofcontents/data/TOCEntry$CollapsableState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/android/tableofcontents/data/TOCEntry$CollapsableState;->EXPANDED:Lcom/amazon/android/tableofcontents/data/TOCEntry$CollapsableState;

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/android/tableofcontents/data/TOCEntry$CollapsableState;->$VALUES:[Lcom/amazon/android/tableofcontents/data/TOCEntry$CollapsableState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/android/tableofcontents/data/TOCEntry$CollapsableState;
    .locals 1

    const-class v0, Lcom/amazon/android/tableofcontents/data/TOCEntry$CollapsableState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/android/tableofcontents/data/TOCEntry$CollapsableState;

    return-object p0
.end method

.method public static values()[Lcom/amazon/android/tableofcontents/data/TOCEntry$CollapsableState;
    .locals 1

    sget-object v0, Lcom/amazon/android/tableofcontents/data/TOCEntry$CollapsableState;->$VALUES:[Lcom/amazon/android/tableofcontents/data/TOCEntry$CollapsableState;

    invoke-virtual {v0}, [Lcom/amazon/android/tableofcontents/data/TOCEntry$CollapsableState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/android/tableofcontents/data/TOCEntry$CollapsableState;

    return-object v0
.end method
