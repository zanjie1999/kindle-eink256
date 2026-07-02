.class public final enum Lcom/facebook/widget/FacebookDialog$MessageDialogFeature;
.super Ljava/lang/Enum;
.source "FacebookDialog.java"

# interfaces
.implements Lcom/facebook/widget/FacebookDialog$DialogFeature;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/widget/FacebookDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MessageDialogFeature"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/widget/FacebookDialog$MessageDialogFeature;",
        ">;",
        "Lcom/facebook/widget/FacebookDialog$DialogFeature;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/widget/FacebookDialog$MessageDialogFeature;

.field public static final enum MESSAGE_DIALOG:Lcom/facebook/widget/FacebookDialog$MessageDialogFeature;

.field public static final enum PHOTOS:Lcom/facebook/widget/FacebookDialog$MessageDialogFeature;


# instance fields
.field private minVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 144
    new-instance v0, Lcom/facebook/widget/FacebookDialog$MessageDialogFeature;

    const/4 v1, 0x0

    const-string v2, "MESSAGE_DIALOG"

    const v3, 0x13350ac

    invoke-direct {v0, v2, v1, v3}, Lcom/facebook/widget/FacebookDialog$MessageDialogFeature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/widget/FacebookDialog$MessageDialogFeature;->MESSAGE_DIALOG:Lcom/facebook/widget/FacebookDialog$MessageDialogFeature;

    .line 148
    new-instance v0, Lcom/facebook/widget/FacebookDialog$MessageDialogFeature;

    const/4 v2, 0x1

    const-string v3, "PHOTOS"

    const v4, 0x1335124

    invoke-direct {v0, v3, v2, v4}, Lcom/facebook/widget/FacebookDialog$MessageDialogFeature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/widget/FacebookDialog$MessageDialogFeature;->PHOTOS:Lcom/facebook/widget/FacebookDialog$MessageDialogFeature;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/facebook/widget/FacebookDialog$MessageDialogFeature;

    .line 139
    sget-object v4, Lcom/facebook/widget/FacebookDialog$MessageDialogFeature;->MESSAGE_DIALOG:Lcom/facebook/widget/FacebookDialog$MessageDialogFeature;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/facebook/widget/FacebookDialog$MessageDialogFeature;->$VALUES:[Lcom/facebook/widget/FacebookDialog$MessageDialogFeature;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 153
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 154
    iput p3, p0, Lcom/facebook/widget/FacebookDialog$MessageDialogFeature;->minVersion:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/widget/FacebookDialog$MessageDialogFeature;
    .locals 1

    .line 139
    const-class v0, Lcom/facebook/widget/FacebookDialog$MessageDialogFeature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/widget/FacebookDialog$MessageDialogFeature;

    return-object p0
.end method

.method public static values()[Lcom/facebook/widget/FacebookDialog$MessageDialogFeature;
    .locals 1

    .line 139
    sget-object v0, Lcom/facebook/widget/FacebookDialog$MessageDialogFeature;->$VALUES:[Lcom/facebook/widget/FacebookDialog$MessageDialogFeature;

    invoke-virtual {v0}, [Lcom/facebook/widget/FacebookDialog$MessageDialogFeature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/widget/FacebookDialog$MessageDialogFeature;

    return-object v0
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    const-string v0, "com.facebook.platform.action.request.MESSAGE_DIALOG"

    return-object v0
.end method

.method public getMinVersion()I
    .locals 1

    .line 168
    iget v0, p0, Lcom/facebook/widget/FacebookDialog$MessageDialogFeature;->minVersion:I

    return v0
.end method
