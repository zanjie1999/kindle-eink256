.class final Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferCalculationFragment$onCreate$1;
.super Ljava/lang/Object;
.source "LibraryTransferCalculationFragment.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferCalculationFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferCalculationFragment$onCreate$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferCalculationFragment$onCreate$1;

    invoke-direct {v0}, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferCalculationFragment$onCreate$1;-><init>()V

    sput-object v0, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferCalculationFragment$onCreate$1;->INSTANCE:Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferCalculationFragment$onCreate$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 33
    sget-object v0, Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary;->INSTANCE:Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary;

    invoke-virtual {v0}, Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary;->calculateTransfer()V

    return-void
.end method
