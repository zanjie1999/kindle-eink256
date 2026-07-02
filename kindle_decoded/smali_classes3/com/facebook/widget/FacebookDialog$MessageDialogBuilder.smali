.class public Lcom/facebook/widget/FacebookDialog$MessageDialogBuilder;
.super Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;
.source "FacebookDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/widget/FacebookDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessageDialogBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase<",
        "Lcom/facebook/widget/FacebookDialog$MessageDialogBuilder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 1087
    invoke-direct {p0, p1}, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method getDialogFeatures()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "+",
            "Lcom/facebook/widget/FacebookDialog$DialogFeature;",
            ">;"
        }
    .end annotation

    .line 1092
    sget-object v0, Lcom/facebook/widget/FacebookDialog$MessageDialogFeature;->MESSAGE_DIALOG:Lcom/facebook/widget/FacebookDialog$MessageDialogFeature;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method
