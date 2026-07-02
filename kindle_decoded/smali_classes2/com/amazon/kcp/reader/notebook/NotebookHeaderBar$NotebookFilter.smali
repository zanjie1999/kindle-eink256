.class public final enum Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;
.super Ljava/lang/Enum;
.source "NotebookHeaderBar.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;

.field public static final enum ALL:Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;

.field public static final enum BOOKMARKS:Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;

.field public static final enum HIGHLIGHTS:Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;

.field public static final enum HIGHLIGHTS_BLUE:Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;

.field public static final enum HIGHLIGHTS_ORANGE:Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;

.field public static final enum HIGHLIGHTS_PINK:Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;

.field public static final enum HIGHLIGHTS_YELLOW:Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;

.field public static final enum NOTES:Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;

.field public static final enum POPULAR_HIGHLIGHT:Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;

.field public static final enum STARRED:Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 29
    new-instance v0, Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;

    const/4 v1, 0x0

    const-string v2, "ALL"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;->ALL:Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;

    .line 30
    new-instance v0, Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;

    const/4 v2, 0x1

    const-string v3, "BOOKMARKS"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;->BOOKMARKS:Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;

    .line 31
    new-instance v0, Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;

    const/4 v3, 0x2

    const-string v4, "HIGHLIGHTS"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;->HIGHLIGHTS:Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;

    .line 32
    new-instance v0, Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;

    const/4 v4, 0x3

    const-string v5, "HIGHLIGHTS_BLUE"

    invoke-direct {v0, v5, v4}, Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;->HIGHLIGHTS_BLUE:Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;

    .line 33
    new-instance v0, Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;

    const/4 v5, 0x4

    const-string v6, "HIGHLIGHTS_ORANGE"

    invoke-direct {v0, v6, v5}, Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;->HIGHLIGHTS_ORANGE:Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;

    .line 34
    new-instance v0, Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;

    const/4 v6, 0x5

    const-string v7, "HIGHLIGHTS_PINK"

    invoke-direct {v0, v7, v6}, Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;->HIGHLIGHTS_PINK:Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;

    .line 35
    new-instance v0, Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;

    const/4 v7, 0x6

    const-string v8, "HIGHLIGHTS_YELLOW"

    invoke-direct {v0, v8, v7}, Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;->HIGHLIGHTS_YELLOW:Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;

    .line 36
    new-instance v0, Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;

    const/4 v8, 0x7

    const-string v9, "NOTES"

    invoke-direct {v0, v9, v8}, Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;->NOTES:Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;

    .line 37
    new-instance v0, Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;

    const/16 v9, 0x8

    const-string v10, "POPULAR_HIGHLIGHT"

    invoke-direct {v0, v10, v9}, Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;->POPULAR_HIGHLIGHT:Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;

    .line 38
    new-instance v0, Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;

    const/16 v10, 0x9

    const-string v11, "STARRED"

    invoke-direct {v0, v11, v10}, Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;->STARRED:Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;

    const/16 v11, 0xa

    new-array v11, v11, [Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;

    .line 28
    sget-object v12, Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;->ALL:Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;

    aput-object v12, v11, v1

    sget-object v1, Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;->BOOKMARKS:Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;

    aput-object v1, v11, v2

    sget-object v1, Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;->HIGHLIGHTS:Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;

    aput-object v1, v11, v3

    sget-object v1, Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;->HIGHLIGHTS_BLUE:Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;

    aput-object v1, v11, v4

    sget-object v1, Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;->HIGHLIGHTS_ORANGE:Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;

    aput-object v1, v11, v5

    sget-object v1, Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;->HIGHLIGHTS_PINK:Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;

    aput-object v1, v11, v6

    sget-object v1, Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;->HIGHLIGHTS_YELLOW:Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;

    aput-object v1, v11, v7

    sget-object v1, Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;->NOTES:Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;

    aput-object v1, v11, v8

    sget-object v1, Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;->POPULAR_HIGHLIGHT:Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;

    aput-object v1, v11, v9

    aput-object v0, v11, v10

    sput-object v11, Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;->$VALUES:[Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;
    .locals 1

    .line 28
    const-class v0, Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;
    .locals 1

    .line 28
    sget-object v0, Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;->$VALUES:[Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;

    invoke-virtual {v0}, [Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;

    return-object v0
.end method
