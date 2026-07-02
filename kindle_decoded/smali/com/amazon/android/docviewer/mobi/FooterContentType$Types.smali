.class public final enum Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;
.super Ljava/lang/Enum;
.source "FooterContentType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/docviewer/mobi/FooterContentType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Types"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;

.field public static final enum BLANK:Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;

.field public static final enum LOCATION:Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;

.field public static final enum PAGE:Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;

.field public static final enum TIME_TO_READ_BOOK:Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;

.field public static final enum TIME_TO_READ_CHAPTER:Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;

.field public static final enum TIME_TO_READ_RECAPS:Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 26
    new-instance v0, Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;

    const/4 v1, 0x0

    const-string v2, "TIME_TO_READ_CHAPTER"

    invoke-direct {v0, v2, v1}, Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;->TIME_TO_READ_CHAPTER:Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;

    .line 27
    new-instance v0, Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;

    const/4 v2, 0x1

    const-string v3, "TIME_TO_READ_BOOK"

    invoke-direct {v0, v3, v2}, Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;->TIME_TO_READ_BOOK:Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;

    .line 28
    new-instance v0, Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;

    const/4 v3, 0x2

    const-string v4, "PAGE"

    invoke-direct {v0, v4, v3}, Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;->PAGE:Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;

    .line 29
    new-instance v0, Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;

    const/4 v4, 0x3

    const-string v5, "LOCATION"

    invoke-direct {v0, v5, v4}, Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;->LOCATION:Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;

    .line 30
    new-instance v0, Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;

    const/4 v5, 0x4

    const-string v6, "TIME_TO_READ_RECAPS"

    invoke-direct {v0, v6, v5}, Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;->TIME_TO_READ_RECAPS:Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;

    .line 31
    new-instance v0, Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;

    const/4 v6, 0x5

    const-string v7, "BLANK"

    invoke-direct {v0, v7, v6}, Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;->BLANK:Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;

    const/4 v7, 0x6

    new-array v7, v7, [Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;

    .line 25
    sget-object v8, Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;->TIME_TO_READ_CHAPTER:Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;

    aput-object v8, v7, v1

    sget-object v1, Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;->TIME_TO_READ_BOOK:Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;

    aput-object v1, v7, v2

    sget-object v1, Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;->PAGE:Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;

    aput-object v1, v7, v3

    sget-object v1, Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;->LOCATION:Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;

    aput-object v1, v7, v4

    sget-object v1, Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;->TIME_TO_READ_RECAPS:Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;

    aput-object v1, v7, v5

    aput-object v0, v7, v6

    sput-object v7, Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;->$VALUES:[Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;
    .locals 1

    .line 25
    const-class v0, Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;

    return-object p0
.end method

.method public static values()[Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;
    .locals 1

    .line 25
    sget-object v0, Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;->$VALUES:[Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;

    invoke-virtual {v0}, [Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;

    return-object v0
.end method
