.class public final enum Lcom/amazon/kindle/pagecurl/ViewMode;
.super Ljava/lang/Enum;
.source "ViewMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/pagecurl/ViewMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/pagecurl/ViewMode;

.field public static final enum SHOW_ONE_PAGE:Lcom/amazon/kindle/pagecurl/ViewMode;

.field public static final enum SHOW_TWO_PAGES:Lcom/amazon/kindle/pagecurl/ViewMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 5
    new-instance v0, Lcom/amazon/kindle/pagecurl/ViewMode;

    const/4 v1, 0x0

    const-string v2, "SHOW_ONE_PAGE"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/pagecurl/ViewMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/pagecurl/ViewMode;->SHOW_ONE_PAGE:Lcom/amazon/kindle/pagecurl/ViewMode;

    .line 7
    new-instance v0, Lcom/amazon/kindle/pagecurl/ViewMode;

    const/4 v2, 0x1

    const-string v3, "SHOW_TWO_PAGES"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/pagecurl/ViewMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/pagecurl/ViewMode;->SHOW_TWO_PAGES:Lcom/amazon/kindle/pagecurl/ViewMode;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/kindle/pagecurl/ViewMode;

    .line 3
    sget-object v4, Lcom/amazon/kindle/pagecurl/ViewMode;->SHOW_ONE_PAGE:Lcom/amazon/kindle/pagecurl/ViewMode;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/kindle/pagecurl/ViewMode;->$VALUES:[Lcom/amazon/kindle/pagecurl/ViewMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/pagecurl/ViewMode;
    .locals 1

    .line 3
    const-class v0, Lcom/amazon/kindle/pagecurl/ViewMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/pagecurl/ViewMode;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/pagecurl/ViewMode;
    .locals 1

    .line 3
    sget-object v0, Lcom/amazon/kindle/pagecurl/ViewMode;->$VALUES:[Lcom/amazon/kindle/pagecurl/ViewMode;

    invoke-virtual {v0}, [Lcom/amazon/kindle/pagecurl/ViewMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/pagecurl/ViewMode;

    return-object v0
.end method
