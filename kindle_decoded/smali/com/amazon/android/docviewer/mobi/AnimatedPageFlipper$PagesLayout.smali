.class final enum Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$PagesLayout;
.super Ljava/lang/Enum;
.source "AnimatedPageFlipper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "PagesLayout"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$PagesLayout;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$PagesLayout;

.field public static final enum SinglePage:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$PagesLayout;

.field public static final enum TwoPagesLeft:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$PagesLayout;

.field public static final enum TwoPagesRight:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$PagesLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 47
    new-instance v0, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$PagesLayout;

    const/4 v1, 0x0

    const-string v2, "TwoPagesLeft"

    invoke-direct {v0, v2, v1}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$PagesLayout;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$PagesLayout;->TwoPagesLeft:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$PagesLayout;

    .line 48
    new-instance v0, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$PagesLayout;

    const/4 v2, 0x1

    const-string v3, "SinglePage"

    invoke-direct {v0, v3, v2}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$PagesLayout;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$PagesLayout;->SinglePage:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$PagesLayout;

    .line 49
    new-instance v0, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$PagesLayout;

    const/4 v3, 0x2

    const-string v4, "TwoPagesRight"

    invoke-direct {v0, v4, v3}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$PagesLayout;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$PagesLayout;->TwoPagesRight:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$PagesLayout;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$PagesLayout;

    .line 46
    sget-object v5, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$PagesLayout;->TwoPagesLeft:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$PagesLayout;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$PagesLayout;->SinglePage:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$PagesLayout;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$PagesLayout;->$VALUES:[Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$PagesLayout;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$PagesLayout;
    .locals 1

    .line 46
    const-class v0, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$PagesLayout;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$PagesLayout;

    return-object p0
.end method

.method public static values()[Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$PagesLayout;
    .locals 1

    .line 46
    sget-object v0, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$PagesLayout;->$VALUES:[Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$PagesLayout;

    invoke-virtual {v0}, [Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$PagesLayout;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$PagesLayout;

    return-object v0
.end method
