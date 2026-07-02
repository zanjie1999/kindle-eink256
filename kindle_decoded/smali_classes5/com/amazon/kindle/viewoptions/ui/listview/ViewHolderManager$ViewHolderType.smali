.class public final enum Lcom/amazon/kindle/viewoptions/ui/listview/ViewHolderManager$ViewHolderType;
.super Ljava/lang/Enum;
.source "ViewHolderManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/viewoptions/ui/listview/ViewHolderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ViewHolderType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/viewoptions/ui/listview/ViewHolderManager$ViewHolderType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/viewoptions/ui/listview/ViewHolderManager$ViewHolderType;

.field public static final enum DOWNLOADABLE_FONTS_VIEW_HOLDER:Lcom/amazon/kindle/viewoptions/ui/listview/ViewHolderManager$ViewHolderType;

.field public static final enum FONT_FAMILY_VIEW_HOLDER:Lcom/amazon/kindle/viewoptions/ui/listview/ViewHolderManager$ViewHolderType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/amazon/kindle/viewoptions/ui/listview/ViewHolderManager$ViewHolderType;

    new-instance v1, Lcom/amazon/kindle/viewoptions/ui/listview/ViewHolderManager$ViewHolderType;

    const/4 v2, 0x0

    const-string v3, "FONT_FAMILY_VIEW_HOLDER"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/viewoptions/ui/listview/ViewHolderManager$ViewHolderType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/viewoptions/ui/listview/ViewHolderManager$ViewHolderType;->FONT_FAMILY_VIEW_HOLDER:Lcom/amazon/kindle/viewoptions/ui/listview/ViewHolderManager$ViewHolderType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/viewoptions/ui/listview/ViewHolderManager$ViewHolderType;

    const/4 v2, 0x1

    const-string v3, "DOWNLOADABLE_FONTS_VIEW_HOLDER"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/viewoptions/ui/listview/ViewHolderManager$ViewHolderType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/viewoptions/ui/listview/ViewHolderManager$ViewHolderType;->DOWNLOADABLE_FONTS_VIEW_HOLDER:Lcom/amazon/kindle/viewoptions/ui/listview/ViewHolderManager$ViewHolderType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/kindle/viewoptions/ui/listview/ViewHolderManager$ViewHolderType;->$VALUES:[Lcom/amazon/kindle/viewoptions/ui/listview/ViewHolderManager$ViewHolderType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/viewoptions/ui/listview/ViewHolderManager$ViewHolderType;
    .locals 1

    const-class v0, Lcom/amazon/kindle/viewoptions/ui/listview/ViewHolderManager$ViewHolderType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/viewoptions/ui/listview/ViewHolderManager$ViewHolderType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/viewoptions/ui/listview/ViewHolderManager$ViewHolderType;
    .locals 1

    sget-object v0, Lcom/amazon/kindle/viewoptions/ui/listview/ViewHolderManager$ViewHolderType;->$VALUES:[Lcom/amazon/kindle/viewoptions/ui/listview/ViewHolderManager$ViewHolderType;

    invoke-virtual {v0}, [Lcom/amazon/kindle/viewoptions/ui/listview/ViewHolderManager$ViewHolderType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/viewoptions/ui/listview/ViewHolderManager$ViewHolderType;

    return-object v0
.end method
