.class final Lcom/amazon/kcp/library/GroupItemBaseScreenlet$viewChangedListener$1;
.super Ljava/lang/Object;
.source "GroupItemBaseScreenlet.kt"

# interfaces
.implements Lcom/amazon/kcp/library/LibraryViewChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/GroupItemBaseScreenlet;-><init>(Lcom/amazon/kindle/krx/ui/ScreenletContext;Lcom/amazon/kcp/library/LibraryContext;Lcom/amazon/kcp/library/LibraryContextChangedCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/library/GroupItemBaseScreenlet$viewChangedListener$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amazon/kcp/library/GroupItemBaseScreenlet$viewChangedListener$1;

    invoke-direct {v0}, Lcom/amazon/kcp/library/GroupItemBaseScreenlet$viewChangedListener$1;-><init>()V

    sput-object v0, Lcom/amazon/kcp/library/GroupItemBaseScreenlet$viewChangedListener$1;->INSTANCE:Lcom/amazon/kcp/library/GroupItemBaseScreenlet$viewChangedListener$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLibraryViewSelected(Lcom/amazon/kindle/krx/library/LibraryView;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
