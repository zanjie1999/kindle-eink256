.class public final enum Lcom/amazon/kindle/krx/collections/CollectionFilter;
.super Ljava/lang/Enum;
.source "CollectionFilter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/krx/collections/CollectionFilter;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/krx/collections/CollectionFilter;

.field public static final enum ALL:Lcom/amazon/kindle/krx/collections/CollectionFilter;

.field public static final enum AUDIO_BOOK:Lcom/amazon/kindle/krx/collections/CollectionFilter;

.field public static final enum DOC:Lcom/amazon/kindle/krx/collections/CollectionFilter;

.field public static final enum EBOOK:Lcom/amazon/kindle/krx/collections/CollectionFilter;

.field public static final enum PERIODICAL:Lcom/amazon/kindle/krx/collections/CollectionFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 8
    new-instance v0, Lcom/amazon/kindle/krx/collections/CollectionFilter;

    const/4 v1, 0x0

    const-string v2, "ALL"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/krx/collections/CollectionFilter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/collections/CollectionFilter;->ALL:Lcom/amazon/kindle/krx/collections/CollectionFilter;

    .line 9
    new-instance v0, Lcom/amazon/kindle/krx/collections/CollectionFilter;

    const/4 v2, 0x1

    const-string v3, "EBOOK"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/krx/collections/CollectionFilter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/collections/CollectionFilter;->EBOOK:Lcom/amazon/kindle/krx/collections/CollectionFilter;

    .line 10
    new-instance v0, Lcom/amazon/kindle/krx/collections/CollectionFilter;

    const/4 v3, 0x2

    const-string v4, "PERIODICAL"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kindle/krx/collections/CollectionFilter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/collections/CollectionFilter;->PERIODICAL:Lcom/amazon/kindle/krx/collections/CollectionFilter;

    .line 11
    new-instance v0, Lcom/amazon/kindle/krx/collections/CollectionFilter;

    const/4 v4, 0x3

    const-string v5, "DOC"

    invoke-direct {v0, v5, v4}, Lcom/amazon/kindle/krx/collections/CollectionFilter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/collections/CollectionFilter;->DOC:Lcom/amazon/kindle/krx/collections/CollectionFilter;

    .line 12
    new-instance v0, Lcom/amazon/kindle/krx/collections/CollectionFilter;

    const/4 v5, 0x4

    const-string v6, "AUDIO_BOOK"

    invoke-direct {v0, v6, v5}, Lcom/amazon/kindle/krx/collections/CollectionFilter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/collections/CollectionFilter;->AUDIO_BOOK:Lcom/amazon/kindle/krx/collections/CollectionFilter;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/amazon/kindle/krx/collections/CollectionFilter;

    .line 6
    sget-object v7, Lcom/amazon/kindle/krx/collections/CollectionFilter;->ALL:Lcom/amazon/kindle/krx/collections/CollectionFilter;

    aput-object v7, v6, v1

    sget-object v1, Lcom/amazon/kindle/krx/collections/CollectionFilter;->EBOOK:Lcom/amazon/kindle/krx/collections/CollectionFilter;

    aput-object v1, v6, v2

    sget-object v1, Lcom/amazon/kindle/krx/collections/CollectionFilter;->PERIODICAL:Lcom/amazon/kindle/krx/collections/CollectionFilter;

    aput-object v1, v6, v3

    sget-object v1, Lcom/amazon/kindle/krx/collections/CollectionFilter;->DOC:Lcom/amazon/kindle/krx/collections/CollectionFilter;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/amazon/kindle/krx/collections/CollectionFilter;->$VALUES:[Lcom/amazon/kindle/krx/collections/CollectionFilter;

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

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/krx/collections/CollectionFilter;
    .locals 1

    .line 6
    const-class v0, Lcom/amazon/kindle/krx/collections/CollectionFilter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/krx/collections/CollectionFilter;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/krx/collections/CollectionFilter;
    .locals 1

    .line 6
    sget-object v0, Lcom/amazon/kindle/krx/collections/CollectionFilter;->$VALUES:[Lcom/amazon/kindle/krx/collections/CollectionFilter;

    invoke-virtual {v0}, [Lcom/amazon/kindle/krx/collections/CollectionFilter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/krx/collections/CollectionFilter;

    return-object v0
.end method
