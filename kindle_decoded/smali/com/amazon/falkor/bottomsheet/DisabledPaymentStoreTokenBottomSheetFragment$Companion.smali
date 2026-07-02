.class public final Lcom/amazon/falkor/bottomsheet/DisabledPaymentStoreTokenBottomSheetFragment$Companion;
.super Ljava/lang/Object;
.source "DisabledPaymentStoreTokenBottomSheetFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/falkor/bottomsheet/DisabledPaymentStoreTokenBottomSheetFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDisabledPaymentStoreTokenBottomSheetFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DisabledPaymentStoreTokenBottomSheetFragment.kt\ncom/amazon/falkor/bottomsheet/DisabledPaymentStoreTokenBottomSheetFragment$Companion\n*L\n1#1,95:1\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/amazon/falkor/bottomsheet/DisabledPaymentStoreTokenBottomSheetFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getNewInstance(I)Landroidx/fragment/app/Fragment;
    .locals 2

    .line 39
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "token_balance"

    .line 40
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 41
    new-instance p1, Lcom/amazon/falkor/bottomsheet/DisabledPaymentStoreTokenBottomSheetFragment;

    invoke-direct {p1}, Lcom/amazon/falkor/bottomsheet/DisabledPaymentStoreTokenBottomSheetFragment;-><init>()V

    .line 42
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p1
.end method
