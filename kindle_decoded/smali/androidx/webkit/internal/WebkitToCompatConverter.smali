.class public Landroidx/webkit/internal/WebkitToCompatConverter;
.super Ljava/lang/Object;
.source "WebkitToCompatConverter.java"


# instance fields
.field private final mImpl:Lorg/chromium/support_lib_boundary/WebkitToCompatConverterBoundaryInterface;


# direct methods
.method public constructor <init>(Lorg/chromium/support_lib_boundary/WebkitToCompatConverterBoundaryInterface;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Landroidx/webkit/internal/WebkitToCompatConverter;->mImpl:Lorg/chromium/support_lib_boundary/WebkitToCompatConverterBoundaryInterface;

    return-void
.end method


# virtual methods
.method public convertSettings(Landroid/webkit/WebSettings;)Landroidx/webkit/internal/WebSettingsAdapter;
    .locals 3

    .line 57
    new-instance v0, Landroidx/webkit/internal/WebSettingsAdapter;

    const-class v1, Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;

    iget-object v2, p0, Landroidx/webkit/internal/WebkitToCompatConverter;->mImpl:Lorg/chromium/support_lib_boundary/WebkitToCompatConverterBoundaryInterface;

    .line 58
    invoke-interface {v2, p1}, Lorg/chromium/support_lib_boundary/WebkitToCompatConverterBoundaryInterface;->convertSettings(Landroid/webkit/WebSettings;)Ljava/lang/reflect/InvocationHandler;

    move-result-object p1

    .line 57
    invoke-static {v1, p1}, Lorg/chromium/support_lib_boundary/util/BoundaryInterfaceReflectionUtil;->castToSuppLibClass(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;

    invoke-direct {v0, p1}, Landroidx/webkit/internal/WebSettingsAdapter;-><init>(Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;)V

    return-object v0
.end method
