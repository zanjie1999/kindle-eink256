.class final Lcom/amazon/kcp/info/StandaloneTutorialManager$1;
.super Lcom/amazon/kcp/info/TutorialMappings;
.source "StandaloneTutorialManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/info/StandaloneTutorialManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .line 27
    invoke-direct {p0}, Lcom/amazon/kcp/info/TutorialMappings;-><init>()V

    .line 30
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isStoreAccessAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    sget-object v0, Lcom/amazon/kcp/info/TutorialManager$JITTutorial;->LIBRARY_SORT:Lcom/amazon/kcp/info/TutorialManager$JITTutorial;

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/info/TutorialMappings;->mapping(Lcom/amazon/kcp/info/TutorialManager$JITTutorial;)Lcom/amazon/kcp/info/TutorialMappings$MappingBuilder;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/thirdparty/R$integer;->tutorial_library_sort_version:I

    .line 32
    invoke-virtual {v0, v1}, Lcom/amazon/kcp/info/TutorialMappings$MappingBuilder;->withVersionId(I)Lcom/amazon/kcp/info/TutorialMappings$MappingBuilder;

    sget v1, Lcom/amazon/kindle/thirdparty/R$layout;->tutorial_view_library_sort:I

    .line 33
    invoke-virtual {v0, v1}, Lcom/amazon/kcp/info/TutorialMappings$MappingBuilder;->withLayout(I)Lcom/amazon/kcp/info/TutorialMappings$MappingBuilder;

    goto :goto_0

    .line 37
    :cond_0
    sget-object v0, Lcom/amazon/kcp/info/TutorialManager$JITTutorial;->LIBRARY_SORT:Lcom/amazon/kcp/info/TutorialManager$JITTutorial;

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/info/TutorialMappings;->mapping(Lcom/amazon/kcp/info/TutorialManager$JITTutorial;)Lcom/amazon/kcp/info/TutorialMappings$MappingBuilder;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/thirdparty/R$integer;->tutorial_library_sort_version:I

    .line 38
    invoke-virtual {v0, v1}, Lcom/amazon/kcp/info/TutorialMappings$MappingBuilder;->withVersionId(I)Lcom/amazon/kcp/info/TutorialMappings$MappingBuilder;

    sget v1, Lcom/amazon/kindle/thirdparty/R$layout;->tutorial_view_library_sort_no_store:I

    .line 39
    invoke-virtual {v0, v1}, Lcom/amazon/kcp/info/TutorialMappings$MappingBuilder;->withLayout(I)Lcom/amazon/kcp/info/TutorialMappings$MappingBuilder;

    .line 41
    :goto_0
    sget-object v0, Lcom/amazon/kcp/info/TutorialManager$JITTutorial;->READER_VIEWOPTIONS:Lcom/amazon/kcp/info/TutorialManager$JITTutorial;

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/info/TutorialMappings;->mapping(Lcom/amazon/kcp/info/TutorialManager$JITTutorial;)Lcom/amazon/kcp/info/TutorialMappings$MappingBuilder;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/thirdparty/R$integer;->tutorial_reader_viewoptions_version:I

    .line 42
    invoke-virtual {v0, v1}, Lcom/amazon/kcp/info/TutorialMappings$MappingBuilder;->withVersionId(I)Lcom/amazon/kcp/info/TutorialMappings$MappingBuilder;

    sget v1, Lcom/amazon/kindle/thirdparty/R$layout;->tutorial_view_reader_viewoptions:I

    .line 43
    invoke-virtual {v0, v1}, Lcom/amazon/kcp/info/TutorialMappings$MappingBuilder;->withOverflowLayout(I)Lcom/amazon/kcp/info/TutorialMappings$MappingBuilder$NoOverflowLayoutBuilder;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/thirdparty/R$layout;->tutorial_view_reader_viewoptions_no_overflow:I

    .line 44
    invoke-virtual {v0, v1}, Lcom/amazon/kcp/info/TutorialMappings$MappingBuilder$NoOverflowLayoutBuilder;->withNoOverflowLayout(I)Lcom/amazon/kcp/info/TutorialMappings$MappingBuilder;

    .line 45
    sget-object v0, Lcom/amazon/kcp/info/TutorialManager$JITTutorial;->READER_NAV_PANEL:Lcom/amazon/kcp/info/TutorialManager$JITTutorial;

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/info/TutorialMappings;->mapping(Lcom/amazon/kcp/info/TutorialManager$JITTutorial;)Lcom/amazon/kcp/info/TutorialMappings$MappingBuilder;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/thirdparty/R$integer;->tutorial_reader_nav_panel_version:I

    .line 46
    invoke-virtual {v0, v1}, Lcom/amazon/kcp/info/TutorialMappings$MappingBuilder;->withVersionId(I)Lcom/amazon/kcp/info/TutorialMappings$MappingBuilder;

    sget v1, Lcom/amazon/kindle/thirdparty/R$layout;->tutorial_view_reader_left_nav:I

    .line 47
    invoke-virtual {v0, v1}, Lcom/amazon/kcp/info/TutorialMappings$MappingBuilder;->withLayout(I)Lcom/amazon/kcp/info/TutorialMappings$MappingBuilder;

    .line 48
    sget-object v0, Lcom/amazon/kcp/info/TutorialManager$JITTutorial;->READER_SOCIAL_SHARING_BOOK:Lcom/amazon/kcp/info/TutorialManager$JITTutorial;

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/info/TutorialMappings;->mapping(Lcom/amazon/kcp/info/TutorialManager$JITTutorial;)Lcom/amazon/kcp/info/TutorialMappings$MappingBuilder;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/thirdparty/R$integer;->tutorial_reader_social_sharing_book_version:I

    .line 49
    invoke-virtual {v0, v1}, Lcom/amazon/kcp/info/TutorialMappings$MappingBuilder;->withVersionId(I)Lcom/amazon/kcp/info/TutorialMappings$MappingBuilder;

    sget v1, Lcom/amazon/kindle/thirdparty/R$layout;->tutorial_view_reader_social_sharing_book:I

    .line 50
    invoke-virtual {v0, v1}, Lcom/amazon/kcp/info/TutorialMappings$MappingBuilder;->withOverflowLayout(I)Lcom/amazon/kcp/info/TutorialMappings$MappingBuilder$NoOverflowLayoutBuilder;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/thirdparty/R$layout;->tutorial_view_reader_social_sharing_book_no_overflow:I

    .line 51
    invoke-virtual {v0, v1}, Lcom/amazon/kcp/info/TutorialMappings$MappingBuilder$NoOverflowLayoutBuilder;->withNoOverflowLayout(I)Lcom/amazon/kcp/info/TutorialMappings$MappingBuilder;

    return-void
.end method
