.class final Lcom/amazon/kindle/ffs/utils/FFSSnackBar$useDialog$2;
.super Ljava/lang/Object;
.source "FFSSnackBar.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/ffs/utils/FFSSnackBar;->useDialog(Landroid/content/Context;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kindle/ffs/utils/FFSSnackBar$useDialog$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amazon/kindle/ffs/utils/FFSSnackBar$useDialog$2;

    invoke-direct {v0}, Lcom/amazon/kindle/ffs/utils/FFSSnackBar$useDialog$2;-><init>()V

    sput-object v0, Lcom/amazon/kindle/ffs/utils/FFSSnackBar$useDialog$2;->INSTANCE:Lcom/amazon/kindle/ffs/utils/FFSSnackBar$useDialog$2;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 55
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
