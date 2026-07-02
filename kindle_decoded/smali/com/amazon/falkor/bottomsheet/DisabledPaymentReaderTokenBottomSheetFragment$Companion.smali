.class public final Lcom/amazon/falkor/bottomsheet/DisabledPaymentReaderTokenBottomSheetFragment$Companion;
.super Ljava/lang/Object;
.source "DisabledPaymentReaderTokenBottomSheetFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/falkor/bottomsheet/DisabledPaymentReaderTokenBottomSheetFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDisabledPaymentReaderTokenBottomSheetFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DisabledPaymentReaderTokenBottomSheetFragment.kt\ncom/amazon/falkor/bottomsheet/DisabledPaymentReaderTokenBottomSheetFragment$Companion\n*L\n1#1,105:1\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/amazon/falkor/bottomsheet/DisabledPaymentReaderTokenBottomSheetFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getNewInstance(II)Landroidx/fragment/app/Fragment;
    .locals 2

    .line 37
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "token_balance"

    .line 38
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "episode_price"

    .line 39
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 40
    new-instance p1, Lcom/amazon/falkor/bottomsheet/DisabledPaymentReaderTokenBottomSheetFragment;

    invoke-direct {p1}, Lcom/amazon/falkor/bottomsheet/DisabledPaymentReaderTokenBottomSheetFragment;-><init>()V

    .line 41
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p1
.end method
