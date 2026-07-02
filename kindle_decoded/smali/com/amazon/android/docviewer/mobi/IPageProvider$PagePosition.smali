.class public final enum Lcom/amazon/android/docviewer/mobi/IPageProvider$PagePosition;
.super Ljava/lang/Enum;
.source "IPageProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/docviewer/mobi/IPageProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PagePosition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/android/docviewer/mobi/IPageProvider$PagePosition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/android/docviewer/mobi/IPageProvider$PagePosition;

.field public static final enum CURRENT:Lcom/amazon/android/docviewer/mobi/IPageProvider$PagePosition;

.field public static final enum NEXT:Lcom/amazon/android/docviewer/mobi/IPageProvider$PagePosition;

.field public static final enum PREVIOUS:Lcom/amazon/android/docviewer/mobi/IPageProvider$PagePosition;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 21
    new-instance v0, Lcom/amazon/android/docviewer/mobi/IPageProvider$PagePosition;

    const/4 v1, 0x0

    const-string v2, "PREVIOUS"

    invoke-direct {v0, v2, v1}, Lcom/amazon/android/docviewer/mobi/IPageProvider$PagePosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/android/docviewer/mobi/IPageProvider$PagePosition;->PREVIOUS:Lcom/amazon/android/docviewer/mobi/IPageProvider$PagePosition;

    .line 22
    new-instance v0, Lcom/amazon/android/docviewer/mobi/IPageProvider$PagePosition;

    const/4 v2, 0x1

    const-string v3, "CURRENT"

    invoke-direct {v0, v3, v2}, Lcom/amazon/android/docviewer/mobi/IPageProvider$PagePosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/android/docviewer/mobi/IPageProvider$PagePosition;->CURRENT:Lcom/amazon/android/docviewer/mobi/IPageProvider$PagePosition;

    .line 23
    new-instance v0, Lcom/amazon/android/docviewer/mobi/IPageProvider$PagePosition;

    const/4 v3, 0x2

    const-string v4, "NEXT"

    invoke-direct {v0, v4, v3}, Lcom/amazon/android/docviewer/mobi/IPageProvider$PagePosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/android/docviewer/mobi/IPageProvider$PagePosition;->NEXT:Lcom/amazon/android/docviewer/mobi/IPageProvider$PagePosition;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/android/docviewer/mobi/IPageProvider$PagePosition;

    .line 20
    sget-object v5, Lcom/amazon/android/docviewer/mobi/IPageProvider$PagePosition;->PREVIOUS:Lcom/amazon/android/docviewer/mobi/IPageProvider$PagePosition;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/android/docviewer/mobi/IPageProvider$PagePosition;->CURRENT:Lcom/amazon/android/docviewer/mobi/IPageProvider$PagePosition;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/android/docviewer/mobi/IPageProvider$PagePosition;->$VALUES:[Lcom/amazon/android/docviewer/mobi/IPageProvider$PagePosition;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/android/docviewer/mobi/IPageProvider$PagePosition;
    .locals 1

    .line 20
    const-class v0, Lcom/amazon/android/docviewer/mobi/IPageProvider$PagePosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/android/docviewer/mobi/IPageProvider$PagePosition;

    return-object p0
.end method

.method public static values()[Lcom/amazon/android/docviewer/mobi/IPageProvider$PagePosition;
    .locals 1

    .line 20
    sget-object v0, Lcom/amazon/android/docviewer/mobi/IPageProvider$PagePosition;->$VALUES:[Lcom/amazon/android/docviewer/mobi/IPageProvider$PagePosition;

    invoke-virtual {v0}, [Lcom/amazon/android/docviewer/mobi/IPageProvider$PagePosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/android/docviewer/mobi/IPageProvider$PagePosition;

    return-object v0
.end method
