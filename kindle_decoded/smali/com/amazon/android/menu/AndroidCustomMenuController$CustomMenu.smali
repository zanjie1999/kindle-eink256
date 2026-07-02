.class public final enum Lcom/amazon/android/menu/AndroidCustomMenuController$CustomMenu;
.super Ljava/lang/Enum;
.source "AndroidCustomMenuController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/menu/AndroidCustomMenuController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CustomMenu"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/android/menu/AndroidCustomMenuController$CustomMenu;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/android/menu/AndroidCustomMenuController$CustomMenu;

.field public static final enum BOOK_READER:Lcom/amazon/android/menu/AndroidCustomMenuController$CustomMenu;

.field public static final enum KINDLE_STORE_FORWARD_DISABLED:Lcom/amazon/android/menu/AndroidCustomMenuController$CustomMenu;

.field public static final enum KINDLE_STORE_FORWARD_ENABLED:Lcom/amazon/android/menu/AndroidCustomMenuController$CustomMenu;

.field public static final enum MOP_READER:Lcom/amazon/android/menu/AndroidCustomMenuController$CustomMenu;

.field public static final enum PDF_READER:Lcom/amazon/android/menu/AndroidCustomMenuController$CustomMenu;

.field public static final enum PERIODICAL_READER_ARTICLELIST:Lcom/amazon/android/menu/AndroidCustomMenuController$CustomMenu;

.field public static final enum PERIODICAL_READER_REPLICAVIEW:Lcom/amazon/android/menu/AndroidCustomMenuController$CustomMenu;

.field public static final enum PERIODICAL_READER_TEXTVIEW:Lcom/amazon/android/menu/AndroidCustomMenuController$CustomMenu;

.field public static final enum READER_SEARCH:Lcom/amazon/android/menu/AndroidCustomMenuController$CustomMenu;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 15
    new-instance v0, Lcom/amazon/android/menu/AndroidCustomMenuController$CustomMenu;

    const/4 v1, 0x0

    const-string v2, "BOOK_READER"

    invoke-direct {v0, v2, v1}, Lcom/amazon/android/menu/AndroidCustomMenuController$CustomMenu;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/android/menu/AndroidCustomMenuController$CustomMenu;->BOOK_READER:Lcom/amazon/android/menu/AndroidCustomMenuController$CustomMenu;

    .line 16
    new-instance v0, Lcom/amazon/android/menu/AndroidCustomMenuController$CustomMenu;

    const/4 v2, 0x1

    const-string v3, "MOP_READER"

    invoke-direct {v0, v3, v2}, Lcom/amazon/android/menu/AndroidCustomMenuController$CustomMenu;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/android/menu/AndroidCustomMenuController$CustomMenu;->MOP_READER:Lcom/amazon/android/menu/AndroidCustomMenuController$CustomMenu;

    .line 17
    new-instance v0, Lcom/amazon/android/menu/AndroidCustomMenuController$CustomMenu;

    const/4 v3, 0x2

    const-string v4, "PERIODICAL_READER_TEXTVIEW"

    invoke-direct {v0, v4, v3}, Lcom/amazon/android/menu/AndroidCustomMenuController$CustomMenu;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/android/menu/AndroidCustomMenuController$CustomMenu;->PERIODICAL_READER_TEXTVIEW:Lcom/amazon/android/menu/AndroidCustomMenuController$CustomMenu;

    .line 18
    new-instance v0, Lcom/amazon/android/menu/AndroidCustomMenuController$CustomMenu;

    const/4 v4, 0x3

    const-string v5, "PERIODICAL_READER_REPLICAVIEW"

    invoke-direct {v0, v5, v4}, Lcom/amazon/android/menu/AndroidCustomMenuController$CustomMenu;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/android/menu/AndroidCustomMenuController$CustomMenu;->PERIODICAL_READER_REPLICAVIEW:Lcom/amazon/android/menu/AndroidCustomMenuController$CustomMenu;

    .line 19
    new-instance v0, Lcom/amazon/android/menu/AndroidCustomMenuController$CustomMenu;

    const/4 v5, 0x4

    const-string v6, "PERIODICAL_READER_ARTICLELIST"

    invoke-direct {v0, v6, v5}, Lcom/amazon/android/menu/AndroidCustomMenuController$CustomMenu;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/android/menu/AndroidCustomMenuController$CustomMenu;->PERIODICAL_READER_ARTICLELIST:Lcom/amazon/android/menu/AndroidCustomMenuController$CustomMenu;

    .line 20
    new-instance v0, Lcom/amazon/android/menu/AndroidCustomMenuController$CustomMenu;

    const/4 v6, 0x5

    const-string v7, "PDF_READER"

    invoke-direct {v0, v7, v6}, Lcom/amazon/android/menu/AndroidCustomMenuController$CustomMenu;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/android/menu/AndroidCustomMenuController$CustomMenu;->PDF_READER:Lcom/amazon/android/menu/AndroidCustomMenuController$CustomMenu;

    .line 21
    new-instance v0, Lcom/amazon/android/menu/AndroidCustomMenuController$CustomMenu;

    const/4 v7, 0x6

    const-string v8, "READER_SEARCH"

    invoke-direct {v0, v8, v7}, Lcom/amazon/android/menu/AndroidCustomMenuController$CustomMenu;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/android/menu/AndroidCustomMenuController$CustomMenu;->READER_SEARCH:Lcom/amazon/android/menu/AndroidCustomMenuController$CustomMenu;

    .line 22
    new-instance v0, Lcom/amazon/android/menu/AndroidCustomMenuController$CustomMenu;

    const/4 v8, 0x7

    const-string v9, "KINDLE_STORE_FORWARD_ENABLED"

    invoke-direct {v0, v9, v8}, Lcom/amazon/android/menu/AndroidCustomMenuController$CustomMenu;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/android/menu/AndroidCustomMenuController$CustomMenu;->KINDLE_STORE_FORWARD_ENABLED:Lcom/amazon/android/menu/AndroidCustomMenuController$CustomMenu;

    .line 23
    new-instance v0, Lcom/amazon/android/menu/AndroidCustomMenuController$CustomMenu;

    const/16 v9, 0x8

    const-string v10, "KINDLE_STORE_FORWARD_DISABLED"

    invoke-direct {v0, v10, v9}, Lcom/amazon/android/menu/AndroidCustomMenuController$CustomMenu;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/android/menu/AndroidCustomMenuController$CustomMenu;->KINDLE_STORE_FORWARD_DISABLED:Lcom/amazon/android/menu/AndroidCustomMenuController$CustomMenu;

    const/16 v10, 0x9

    new-array v10, v10, [Lcom/amazon/android/menu/AndroidCustomMenuController$CustomMenu;

    .line 13
    sget-object v11, Lcom/amazon/android/menu/AndroidCustomMenuController$CustomMenu;->BOOK_READER:Lcom/amazon/android/menu/AndroidCustomMenuController$CustomMenu;

    aput-object v11, v10, v1

    sget-object v1, Lcom/amazon/android/menu/AndroidCustomMenuController$CustomMenu;->MOP_READER:Lcom/amazon/android/menu/AndroidCustomMenuController$CustomMenu;

    aput-object v1, v10, v2

    sget-object v1, Lcom/amazon/android/menu/AndroidCustomMenuController$CustomMenu;->PERIODICAL_READER_TEXTVIEW:Lcom/amazon/android/menu/AndroidCustomMenuController$CustomMenu;

    aput-object v1, v10, v3

    sget-object v1, Lcom/amazon/android/menu/AndroidCustomMenuController$CustomMenu;->PERIODICAL_READER_REPLICAVIEW:Lcom/amazon/android/menu/AndroidCustomMenuController$CustomMenu;

    aput-object v1, v10, v4

    sget-object v1, Lcom/amazon/android/menu/AndroidCustomMenuController$CustomMenu;->PERIODICAL_READER_ARTICLELIST:Lcom/amazon/android/menu/AndroidCustomMenuController$CustomMenu;

    aput-object v1, v10, v5

    sget-object v1, Lcom/amazon/android/menu/AndroidCustomMenuController$CustomMenu;->PDF_READER:Lcom/amazon/android/menu/AndroidCustomMenuController$CustomMenu;

    aput-object v1, v10, v6

    sget-object v1, Lcom/amazon/android/menu/AndroidCustomMenuController$CustomMenu;->READER_SEARCH:Lcom/amazon/android/menu/AndroidCustomMenuController$CustomMenu;

    aput-object v1, v10, v7

    sget-object v1, Lcom/amazon/android/menu/AndroidCustomMenuController$CustomMenu;->KINDLE_STORE_FORWARD_ENABLED:Lcom/amazon/android/menu/AndroidCustomMenuController$CustomMenu;

    aput-object v1, v10, v8

    aput-object v0, v10, v9

    sput-object v10, Lcom/amazon/android/menu/AndroidCustomMenuController$CustomMenu;->$VALUES:[Lcom/amazon/android/menu/AndroidCustomMenuController$CustomMenu;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/android/menu/AndroidCustomMenuController$CustomMenu;
    .locals 1

    .line 13
    const-class v0, Lcom/amazon/android/menu/AndroidCustomMenuController$CustomMenu;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/android/menu/AndroidCustomMenuController$CustomMenu;

    return-object p0
.end method

.method public static values()[Lcom/amazon/android/menu/AndroidCustomMenuController$CustomMenu;
    .locals 1

    .line 13
    sget-object v0, Lcom/amazon/android/menu/AndroidCustomMenuController$CustomMenu;->$VALUES:[Lcom/amazon/android/menu/AndroidCustomMenuController$CustomMenu;

    invoke-virtual {v0}, [Lcom/amazon/android/menu/AndroidCustomMenuController$CustomMenu;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/android/menu/AndroidCustomMenuController$CustomMenu;

    return-object v0
.end method
