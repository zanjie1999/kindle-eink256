.class public final enum Lcom/amazon/kcp/library/LibraryActionBarHelper$ActionBarOption;
.super Ljava/lang/Enum;
.source "LibraryActionBarHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/LibraryActionBarHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ActionBarOption"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/library/LibraryActionBarHelper$ActionBarOption;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/library/LibraryActionBarHelper$ActionBarOption;

.field public static final enum SHARE:Lcom/amazon/kcp/library/LibraryActionBarHelper$ActionBarOption;

.field public static final enum VIEW_SORT:Lcom/amazon/kcp/library/LibraryActionBarHelper$ActionBarOption;


# instance fields
.field private final itemId:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 27
    new-instance v0, Lcom/amazon/kcp/library/LibraryActionBarHelper$ActionBarOption;

    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->lib_menu_view_sort:I

    const/4 v2, 0x0

    const-string v3, "VIEW_SORT"

    invoke-direct {v0, v3, v2, v1}, Lcom/amazon/kcp/library/LibraryActionBarHelper$ActionBarOption;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kcp/library/LibraryActionBarHelper$ActionBarOption;->VIEW_SORT:Lcom/amazon/kcp/library/LibraryActionBarHelper$ActionBarOption;

    .line 28
    new-instance v0, Lcom/amazon/kcp/library/LibraryActionBarHelper$ActionBarOption;

    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->lib_menu_share_button:I

    const/4 v3, 0x1

    const-string v4, "SHARE"

    invoke-direct {v0, v4, v3, v1}, Lcom/amazon/kcp/library/LibraryActionBarHelper$ActionBarOption;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kcp/library/LibraryActionBarHelper$ActionBarOption;->SHARE:Lcom/amazon/kcp/library/LibraryActionBarHelper$ActionBarOption;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/amazon/kcp/library/LibraryActionBarHelper$ActionBarOption;

    .line 26
    sget-object v4, Lcom/amazon/kcp/library/LibraryActionBarHelper$ActionBarOption;->VIEW_SORT:Lcom/amazon/kcp/library/LibraryActionBarHelper$ActionBarOption;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/amazon/kcp/library/LibraryActionBarHelper$ActionBarOption;->$VALUES:[Lcom/amazon/kcp/library/LibraryActionBarHelper$ActionBarOption;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 33
    iput p3, p0, Lcom/amazon/kcp/library/LibraryActionBarHelper$ActionBarOption;->itemId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/library/LibraryActionBarHelper$ActionBarOption;
    .locals 1

    .line 26
    const-class v0, Lcom/amazon/kcp/library/LibraryActionBarHelper$ActionBarOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/library/LibraryActionBarHelper$ActionBarOption;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/library/LibraryActionBarHelper$ActionBarOption;
    .locals 1

    .line 26
    sget-object v0, Lcom/amazon/kcp/library/LibraryActionBarHelper$ActionBarOption;->$VALUES:[Lcom/amazon/kcp/library/LibraryActionBarHelper$ActionBarOption;

    invoke-virtual {v0}, [Lcom/amazon/kcp/library/LibraryActionBarHelper$ActionBarOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/library/LibraryActionBarHelper$ActionBarOption;

    return-object v0
.end method


# virtual methods
.method public getItemId()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/amazon/kcp/library/LibraryActionBarHelper$ActionBarOption;->itemId:I

    return v0
.end method
