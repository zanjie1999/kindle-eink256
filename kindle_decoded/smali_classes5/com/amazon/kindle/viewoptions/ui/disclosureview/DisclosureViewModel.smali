.class public Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureViewModel;
.super Ljava/lang/Object;
.source "DisclosureViewModel.kt"


# instance fields
.field private final context:Landroid/content/Context;

.field private state:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 9
    iput-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureViewModel;->state:Ljava/lang/String;

    .line 13
    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureViewModel;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureViewModel;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final getState()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureViewModel;->state:Ljava/lang/String;

    return-object v0
.end method

.method public final setState(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureViewModel;->state:Ljava/lang/String;

    return-void
.end method
