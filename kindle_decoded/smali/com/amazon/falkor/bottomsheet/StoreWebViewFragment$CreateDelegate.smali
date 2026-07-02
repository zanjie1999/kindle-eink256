.class public final Lcom/amazon/falkor/bottomsheet/StoreWebViewFragment$CreateDelegate;
.super Ljava/lang/Object;
.source "StoreBottomSheetController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/falkor/bottomsheet/StoreWebViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CreateDelegate"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStoreBottomSheetController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StoreBottomSheetController.kt\ncom/amazon/falkor/bottomsheet/StoreWebViewFragment$CreateDelegate\n*L\n1#1,180:1\n*E\n"
.end annotation


# instance fields
.field private final type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/falkor/bottomsheet/StoreWebViewFragment$CreateDelegate;->type:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public newFragment(Ljava/lang/String;Z)Landroidx/fragment/app/Fragment;
    .locals 3

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    new-instance v1, Lcom/amazon/falkor/bottomsheet/StoreWebViewFragment;

    invoke-direct {v1}, Lcom/amazon/falkor/bottomsheet/StoreWebViewFragment;-><init>()V

    .line 170
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 171
    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "is_in_dark_mode"

    .line 172
    invoke-virtual {v2, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 173
    iget-object p1, p0, Lcom/amazon/falkor/bottomsheet/StoreWebViewFragment$CreateDelegate;->type:Ljava/lang/String;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 174
    iget-object p1, p0, Lcom/amazon/falkor/bottomsheet/StoreWebViewFragment$CreateDelegate;->type:Ljava/lang/String;

    const-string/jumbo p2, "type"

    invoke-virtual {v2, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    :cond_1
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method
