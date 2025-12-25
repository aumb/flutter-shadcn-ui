import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

/// Available icon pack options
enum IconPackOption {
  lucide('Lucide Icons'),
  huge('Huge Icons');

  const IconPackOption(this.label);
  final String label;

  ShadIcons get icons => switch (this) {
    lucide => const ShadLucideIcons(),
    huge => const ShadHugeIcons(),
  };
}

class IconPackPage extends StatefulWidget {
  const IconPackPage({super.key});

  @override
  State<IconPackPage> createState() => _IconPackPageState();
}

class _IconPackPageState extends State<IconPackPage> {
  IconPackOption _selectedPack = IconPackOption.lucide;

  @override
  Widget build(BuildContext context) {
    final theme = ShadTheme.of(context);

    // Create a modified theme with the selected icon pack
    final modifiedTheme = ShadThemeData(
      colorScheme: theme.colorScheme,
      brightness: theme.brightness,
      icons: _selectedPack.icons,
    );

    return ShadTheme(
      data: modifiedTheme,
      child: Scaffold(
        backgroundColor: modifiedTheme.colorScheme.background,
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Icon Pack Selector
              _buildPackSelector(modifiedTheme),
              const SizedBox(height: 32),

              // Icon Preview Section
              _buildSectionTitle('Icon Preview', modifiedTheme),
              _buildIconPreview(modifiedTheme),
              const SizedBox(height: 32),

              // Accordion Section
              _buildSectionTitle('Accordion', modifiedTheme),
              _buildAccordionSection(),
              const SizedBox(height: 32),

              // Breadcrumb Section
              _buildSectionTitle('Breadcrumb', modifiedTheme),
              _buildBreadcrumbSection(),
              const SizedBox(height: 32),

              // Calendar Section
              _buildSectionTitle('Calendar', modifiedTheme),
              _buildCalendarSection(),
              const SizedBox(height: 32),

              // Checkbox Section
              _buildSectionTitle('Checkbox', modifiedTheme),
              _buildCheckboxSection(),
              const SizedBox(height: 32),

              // Date Picker Section
              _buildSectionTitle('Date Picker', modifiedTheme),
              _buildDatePickerSection(),
              const SizedBox(height: 32),

              // Dialog Section
              _buildSectionTitle('Dialog', modifiedTheme),
              _buildDialogSection(context),
              const SizedBox(height: 32),

              // Resizable Section
              _buildSectionTitle('Resizable', modifiedTheme),
              _buildResizableSection(modifiedTheme),
              const SizedBox(height: 32),

              // Select Section
              _buildSectionTitle('Select', modifiedTheme),
              _buildSelectSection(modifiedTheme),
              const SizedBox(height: 32),

              // Toast Section
              _buildSectionTitle('Toast', modifiedTheme),
              _buildToastSection(context),
              const SizedBox(height: 32),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPackSelector(ShadThemeData theme) {
    return ShadCard(
      title: Text(
        'Icon Pack',
        style: theme.textTheme.h4,
      ),
      description: const Text('Select an icon pack to preview'),
      child: Padding(
        padding: const EdgeInsets.only(top: 16),
        child: ShadTabs<IconPackOption>(
          value: _selectedPack,
          onChanged: (value) => setState(() => _selectedPack = value),
          tabs: [
            for (final pack in IconPackOption.values)
              ShadTab(value: pack, child: Text(pack.label)),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title, ShadThemeData theme) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Text(
        title,
        style: theme.textTheme.h3,
      ),
    );
  }

  Widget _buildIconPreview(ShadThemeData theme) {
    final icons = _selectedPack.icons;

    return ShadCard(
      child: Wrap(
        spacing: 24,
        runSpacing: 16,
        children: [
          _buildIconItem('up', icons.up(), theme),
          _buildIconItem('down', icons.down(), theme),
          _buildIconItem('left', icons.left(), theme),
          _buildIconItem('right', icons.right(), theme),
          _buildIconItem('ellipsis', icons.ellipsis(), theme),
          _buildIconItem('check', icons.check(), theme),
          _buildIconItem('calendar', icons.calendar(), theme),
          _buildIconItem('close', icons.close(), theme),
          _buildIconItem('gripVertical', icons.gripVertical(), theme),
          _buildIconItem('gripHorizontal', icons.gripHorizontal(), theme),
          _buildIconItem('search', icons.search(), theme),
        ],
      ),
    );
  }

  Widget _buildIconItem(String name, Widget icon, ShadThemeData theme) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            border: Border.all(color: theme.colorScheme.border),
            borderRadius: BorderRadius.circular(8),
          ),
          child: IconTheme(
            data: IconThemeData(
              color: theme.colorScheme.foreground,
              size: 24,
            ),
            child: icon,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          name,
          style: theme.textTheme.small,
        ),
      ],
    );
  }

  Widget _buildAccordionSection() {
    return ShadAccordion<String>(
      children: [
        ShadAccordionItem(
          value: '1',
          title: const Text('Is it accessible?'),
          child: const Text(
            'Yes. It adheres to the WAI-ARIA design pattern.',
          ),
        ),
        ShadAccordionItem(
          value: '2',
          title: const Text('Is it styled?'),
          child: const Text(
            'Yes. It comes with default styles that matches the other components.',
          ),
        ),
      ],
    );
  }

  Widget _buildBreadcrumbSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ShadBreadcrumb(
          children: [
            ShadBreadcrumbLink(
              onPressed: () {},
              child: const Text('Home'),
            ),
            ShadBreadcrumbLink(
              onPressed: () {},
              child: const Text('Components'),
            ),
            const Text('Breadcrumb'),
          ],
        ),
        const SizedBox(height: 16),
        ShadBreadcrumb(
          children: [
            ShadBreadcrumbLink(
              onPressed: () {},
              child: const Text('Home'),
            ),
            ShadBreadcrumbDropdown(
              items: [
                ShadBreadcrumbDropMenuItem(
                  onPressed: () {},
                  child: const Text('Documentation'),
                ),
                ShadBreadcrumbDropMenuItem(
                  onPressed: () {},
                  child: const Text('Themes'),
                ),
              ],
              showDropdownArrow: false,
              child: ShadBreadcrumbEllipsis(),
            ),
            const Text('Current'),
          ],
        ),
      ],
    );
  }

  Widget _buildCalendarSection() {
    return ShadCalendar(
      selected: DateTime.now(),
      onChanged: (_) {},
    );
  }

  Widget _buildCheckboxSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ShadCheckbox(
          value: true,
          onChanged: (_) {},
          label: const Text('Checked checkbox'),
        ),
        const SizedBox(height: 8),
        ShadCheckbox(
          value: false,
          onChanged: (_) {},
          label: const Text('Unchecked checkbox'),
        ),
      ],
    );
  }

  Widget _buildDatePickerSection() {
    return ShadDatePicker(
      selected: DateTime.now(),
      onChanged: (_) {},
    );
  }

  Widget _buildDialogSection(BuildContext context) {
    return ShadButton(
      child: const Text('Open Dialog'),
      onPressed: () {
        showShadDialog(
          context: context,
          builder: (context) => ShadDialog(
            title: const Text('Dialog Title'),
            description: const Text('This dialog shows the close icon.'),
            actions: [
              ShadButton(
                child: const Text('Close'),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildResizableSection(ShadThemeData theme) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxHeight: 200),
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: theme.radius,
          border: Border.all(color: theme.colorScheme.border),
        ),
        child: ClipRRect(
          borderRadius: theme.radius,
          child: ShadResizablePanelGroup(
            showHandle: true,
            children: [
              ShadResizablePanel(
                id: 0,
                defaultSize: 0.5,
                minSize: 0.2,
                child: Center(
                  child: Text('Panel 1', style: theme.textTheme.large),
                ),
              ),
              ShadResizablePanel(
                id: 1,
                defaultSize: 0.5,
                minSize: 0.2,
                child: Center(
                  child: Text('Panel 2', style: theme.textTheme.large),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSelectSection(ShadThemeData theme) {
    return ConstrainedBox(
      constraints: const BoxConstraints(minWidth: 180),
      child: ShadSelect<String>(
        placeholder: const Text('Select a fruit'),
        options: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
            child: Text(
              'Fruits',
              style: theme.textTheme.muted.copyWith(
                fontWeight: FontWeight.w600,
                color: theme.colorScheme.popoverForeground,
              ),
            ),
          ),
          ...['Apple', 'Banana', 'Orange', 'Grape', 'Mango'].map(
            (fruit) => ShadOption(value: fruit, child: Text(fruit)),
          ),
        ],
        selectedOptionBuilder: (context, value) => Text(value),
        onChanged: (_) {},
      ),
    );
  }

  Widget _buildToastSection(BuildContext context) {
    return ShadButton(
      child: const Text('Show Toast'),
      onPressed: () {
        ShadToaster.of(context).show(
          ShadToast(
            title: const Text('Toast Title'),
            description: const Text('This toast shows the close icon.'),
          ),
        );
      },
    );
  }
}
