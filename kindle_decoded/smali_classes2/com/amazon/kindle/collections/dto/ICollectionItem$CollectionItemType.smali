.class public final enum Lcom/amazon/kindle/collections/dto/ICollectionItem$CollectionItemType;
.super Ljava/lang/Enum;
.source "ICollectionItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/collections/dto/ICollectionItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CollectionItemType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/collections/dto/ICollectionItem$CollectionItemType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/collections/dto/ICollectionItem$CollectionItemType;

.field public static final enum AUDIO_BOOK:Lcom/amazon/kindle/collections/dto/ICollectionItem$CollectionItemType;

.field public static final enum DOC:Lcom/amazon/kindle/collections/dto/ICollectionItem$CollectionItemType;

.field public static final enum EBOOK:Lcom/amazon/kindle/collections/dto/ICollectionItem$CollectionItemType;

.field public static final enum PERIODICAL:Lcom/amazon/kindle/collections/dto/ICollectionItem$CollectionItemType;


# instance fields
.field private final filter:Lcom/amazon/kindle/krx/collections/CollectionFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 21
    new-instance v0, Lcom/amazon/kindle/collections/dto/ICollectionItem$CollectionItemType;

    sget-object v1, Lcom/amazon/kindle/krx/collections/CollectionFilter;->EBOOK:Lcom/amazon/kindle/krx/collections/CollectionFilter;

    const/4 v2, 0x0

    const-string v3, "EBOOK"

    invoke-direct {v0, v3, v2, v1}, Lcom/amazon/kindle/collections/dto/ICollectionItem$CollectionItemType;-><init>(Ljava/lang/String;ILcom/amazon/kindle/krx/collections/CollectionFilter;)V

    sput-object v0, Lcom/amazon/kindle/collections/dto/ICollectionItem$CollectionItemType;->EBOOK:Lcom/amazon/kindle/collections/dto/ICollectionItem$CollectionItemType;

    .line 22
    new-instance v0, Lcom/amazon/kindle/collections/dto/ICollectionItem$CollectionItemType;

    sget-object v1, Lcom/amazon/kindle/krx/collections/CollectionFilter;->PERIODICAL:Lcom/amazon/kindle/krx/collections/CollectionFilter;

    const/4 v3, 0x1

    const-string v4, "PERIODICAL"

    invoke-direct {v0, v4, v3, v1}, Lcom/amazon/kindle/collections/dto/ICollectionItem$CollectionItemType;-><init>(Ljava/lang/String;ILcom/amazon/kindle/krx/collections/CollectionFilter;)V

    sput-object v0, Lcom/amazon/kindle/collections/dto/ICollectionItem$CollectionItemType;->PERIODICAL:Lcom/amazon/kindle/collections/dto/ICollectionItem$CollectionItemType;

    .line 23
    new-instance v0, Lcom/amazon/kindle/collections/dto/ICollectionItem$CollectionItemType;

    sget-object v1, Lcom/amazon/kindle/krx/collections/CollectionFilter;->DOC:Lcom/amazon/kindle/krx/collections/CollectionFilter;

    const/4 v4, 0x2

    const-string v5, "DOC"

    invoke-direct {v0, v5, v4, v1}, Lcom/amazon/kindle/collections/dto/ICollectionItem$CollectionItemType;-><init>(Ljava/lang/String;ILcom/amazon/kindle/krx/collections/CollectionFilter;)V

    sput-object v0, Lcom/amazon/kindle/collections/dto/ICollectionItem$CollectionItemType;->DOC:Lcom/amazon/kindle/collections/dto/ICollectionItem$CollectionItemType;

    .line 24
    new-instance v0, Lcom/amazon/kindle/collections/dto/ICollectionItem$CollectionItemType;

    sget-object v1, Lcom/amazon/kindle/krx/collections/CollectionFilter;->AUDIO_BOOK:Lcom/amazon/kindle/krx/collections/CollectionFilter;

    const/4 v5, 0x3

    const-string v6, "AUDIO_BOOK"

    invoke-direct {v0, v6, v5, v1}, Lcom/amazon/kindle/collections/dto/ICollectionItem$CollectionItemType;-><init>(Ljava/lang/String;ILcom/amazon/kindle/krx/collections/CollectionFilter;)V

    sput-object v0, Lcom/amazon/kindle/collections/dto/ICollectionItem$CollectionItemType;->AUDIO_BOOK:Lcom/amazon/kindle/collections/dto/ICollectionItem$CollectionItemType;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/amazon/kindle/collections/dto/ICollectionItem$CollectionItemType;

    .line 20
    sget-object v6, Lcom/amazon/kindle/collections/dto/ICollectionItem$CollectionItemType;->EBOOK:Lcom/amazon/kindle/collections/dto/ICollectionItem$CollectionItemType;

    aput-object v6, v1, v2

    sget-object v2, Lcom/amazon/kindle/collections/dto/ICollectionItem$CollectionItemType;->PERIODICAL:Lcom/amazon/kindle/collections/dto/ICollectionItem$CollectionItemType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/kindle/collections/dto/ICollectionItem$CollectionItemType;->DOC:Lcom/amazon/kindle/collections/dto/ICollectionItem$CollectionItemType;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/amazon/kindle/collections/dto/ICollectionItem$CollectionItemType;->$VALUES:[Lcom/amazon/kindle/collections/dto/ICollectionItem$CollectionItemType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/amazon/kindle/krx/collections/CollectionFilter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/collections/CollectionFilter;",
            ")V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 29
    iput-object p3, p0, Lcom/amazon/kindle/collections/dto/ICollectionItem$CollectionItemType;->filter:Lcom/amazon/kindle/krx/collections/CollectionFilter;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/collections/dto/ICollectionItem$CollectionItemType;
    .locals 1

    .line 20
    const-class v0, Lcom/amazon/kindle/collections/dto/ICollectionItem$CollectionItemType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/collections/dto/ICollectionItem$CollectionItemType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/collections/dto/ICollectionItem$CollectionItemType;
    .locals 1

    .line 20
    sget-object v0, Lcom/amazon/kindle/collections/dto/ICollectionItem$CollectionItemType;->$VALUES:[Lcom/amazon/kindle/collections/dto/ICollectionItem$CollectionItemType;

    invoke-virtual {v0}, [Lcom/amazon/kindle/collections/dto/ICollectionItem$CollectionItemType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/collections/dto/ICollectionItem$CollectionItemType;

    return-object v0
.end method
